local tmp = {}

minetest.register_entity("gold_and_gem:item",{
	hp_max = 1,
	visual="wielditem",
	visual_size={x=.33,y=.33},
	collisionbox = {0,0,0,0,0,0},
	physical=false,
	textures={"air"},
	on_activate = function(self, staticdata)
		if tmp.nodename ~= nil and tmp.texture ~= nil then
			self.nodename = tmp.nodename
			tmp.nodename = nil
			self.texture = tmp.texture
			tmp.texture = nil
		else
			if staticdata ~= nil and staticdata ~= "" then
				local data = staticdata:split(';')
				if data and data[1] and data[2] then
					self.nodename = data[1]
					self.texture = data[2]
				end
			end
		end
		if self.texture ~= nil then
			self.object:set_properties({textures={self.texture}})
		end
		if self.nodename == "gold_and_gem:gold_pedestal" then
			self.object:set_properties({automatic_rotate=1})
		end
	end,
	get_staticdata = function(self)
		if self.nodename ~= nil and self.texture ~= nil then
			return self.nodename .. ';' .. self.texture
		end
		return ""
	end,
})


local facedir = {}
facedir[0] = {x=0,y=0,z=1}
facedir[1] = {x=1,y=0,z=0}
facedir[2] = {x=0,y=0,z=-1}
facedir[3] = {x=-1,y=0,z=0}

local remove_item = function(pos, node)
	if node.name == "gold_and_gem:gold_pedestal" then
		objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y+1,z=pos.z}, .5)
	end
	if objs then
		for _, obj in ipairs(objs) do
			if obj and obj:get_luaentity() and obj:get_luaentity().name == "gold_and_gem:item" then
				obj:remove()
			end
		end
	end
end

local update_item = function(pos, node)
	remove_item(pos, node)
	local meta = minetest.env:get_meta(pos)
	if meta:get_string("item") ~= "" then
		if node.name == "gold_and_gem:gold_pedestal" then
			pos.y = pos.y + 12/16+.33
		end
		tmp.nodename = node.name
		tmp.texture = ItemStack(meta:get_string("item")):get_name()
		local e = minetest.env:add_entity(pos,"gold_and_gem:item")
    end
end


local drop_item = function(pos, node)
	local meta = minetest.env:get_meta(pos)
	if meta:get_string("item") ~= "" then
		if node.name == "gold_and_gem:gold_pedestal" then
			minetest.env:add_item({x=pos.x,y=pos.y+1,z=pos.z}, meta:get_string("item"))
		end
		meta:set_string("item","")
	end
	remove_item(pos, node)
end




minetest.register_node("gold_and_gem:gold_pedestal",{
	description = "Gold Pedestal",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.3125, 0.125, 0.5, 0.3125}, -- NodeBox4
			{-0.3125, -0.5, -0.125, 0.3125, 0.5, 0.125}, -- NodeBox5
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25}, -- NodeBox6
			{-0.4375, -0.5, -0.3125, 0.4375, -0.4375, 0.3125}, -- NodeBox7
			{-0.3125, -0.5, -0.4375, 0.3125, -0.4375, 0.4375}, -- NodeBox8
			{-0.375, -0.5, -0.375, 0.375, -0.4375, 0.375}, -- NodeBox9
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125}, -- NodeBox10
			{-0.375, -0.5, -0.25, 0.375, -0.375, 0.25}, -- NodeBox11
			{-0.25, -0.5, -0.375, 0.25, -0.375, 0.375}, -- NodeBox12
			{-0.375, 0.5, -0.4375, 0.375, 0.75, 0.4375}, -- NodeBox15
			{-0.4375, 0.5625, -0.375, 0.4375, 0.75, 0.375}, -- NodeBox16
			{-0.4375, 0.5, -0.5, 0.4375, 0.5625, 0.5}, -- NodeBox17
			{-0.5, 0.5, -0.4375, 0.5, 0.5625, 0.4375}, -- NodeBox18
			{-0.375, 0.4375, -0.375, 0.375, 0.75, 0.375}, -- NodeBox19
		}
	},
	tiles = {"goldgem_gold.png"},
	paramtype = "light",
	groups = { cracky=3 },
	sounds = default.node_sound_defaults(),
	after_place_node = function(pos, placer, itemstack)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("owner",placer:get_player_name())
		meta:set_string("infotext","Pedestal (owned by "..placer:get_player_name()..")")
	end,
	on_rightclick = function(pos, node, clicker, itemstack)
		if not itemstack then return end
		local meta = minetest.env:get_meta(pos)
		if clicker:get_player_name() == meta:get_string("owner") then
			drop_item(pos,node)
			local s = itemstack:take_item()
			meta:set_string("item",s:to_string())
			update_item(pos,node)
		end
		return itemstack
	end,
	on_punch = function(pos,node,puncher)
		local meta = minetest.env:get_meta(pos)
		if puncher:get_player_name() == meta:get_string("owner") then
			drop_item(pos,node)
		end
	end,
	can_dig = function(pos,player)

		local meta = minetest.env:get_meta(pos)
		return player:get_player_name() == meta:get_string("owner")
	end,
})


-- due to /clearobjects or similar

minetest.register_abm({
	nodenames = {"gold_and_gem:gold_pedestal" },
	interval = 15,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if #minetest.get_objects_inside_radius(pos, 0.5) > 0 then return end
		update_item(pos, node)
	end
})

-- crafts


minetest.register_craft({
	output = 'gold_and_gem:gold_pedestal',
	recipe = {
		{'default:gold_ingot', 'default:gold_ingot', 'default:gold_ingot'},
		{'', 'default:gold_ingot', ''},
		{'technic:fine_gold_wire', 'default:gold_ingot', 'technic:fine_gold_wire'},
	}
})
