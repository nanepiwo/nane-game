minetest.register_alias("barrels_checker", "barrels:barrels_checker")

minetest.register_craftitem("barrels:barrels_checker", {	
description = "Barrels Checker",
inventory_image = "barrels_barrel_checker.png",
stack_max = 1,

})

minetest.register_craft({
	output = 'barrels:barrels_checker',
	recipe = {
		{'barrels:barrel', 'technic:control_logic_unit', ''},
		{'', '', ''},
		{'', '', ''},
	},
	additional_wear = -1
})

minetest.register_entity("barrels:item_put",{
	hp_max = 1,
	visual="wielditem",
	visual_size={x=.30,y=.30},
	collisionbox = {0,0,0,0,0,0},
	physical=false,
	textures={"air"}
})

local facedir = {}
facedir[0] = {x=0,y=0,z=1.2} --
facedir[1] = {x=1.2,y=0,z=0} --
facedir[2] = {x=0,y=0,z=-1.2} --
facedir[3] = {x=-1.2,y=0,z=0} --

local remove_item = function(pos)
	objs = minetest.env:get_objects_inside_radius(pos, .6)
	if objs then
		for _, obj in ipairs(objs) do
			if obj and obj:get_luaentity() and obj:get_luaentity().name == "barrels:item_put" then
				obj:remove()
			end
		end
	end
end

local update_item = function(pos, node)
	remove_item(pos)
	local meta = minetest.env:get_meta(pos)
	if meta:get_string("item") ~= "" then
		posad = facedir[node.param2]
		pos.x = pos.x + posad.x*7/16
		pos.y = pos.y + posad.y*7/16
		pos.z = pos.z + posad.z*7/16
		local e = minetest.env:add_entity(pos,"barrels:item_put")
		local name = ItemStack(meta:get_string("item")):get_name()
		e:set_properties({textures={name}})
		local yaw = math.pi*2 - node.param2 * math.pi/2
		e:setyaw(yaw)
	end
end

minetest.register_alias("barrel","barrels:barrel")
minetest.register_craft({
	output = 'barrels:barrel,2',
	recipe = {
		{'default:tree','default:tree', 'default:tree'},
		{'default:tree', '', 'default:tree'},
		{'default:tree', 'default:tree', 'default:tree'},
	}
})

minetest.register_node("barrels:barrel", {
	description = "Barrel",
	tiles = {"barrels_barrel_side.png"},
	paramtype2 = "facedir",
	groups = {cracky=2, tubedevice=1,tubedevice_receiver=1,},
	tube={insert_object=function(pos,node,stack,direction)
		local meta=minetest.env:get_meta(pos)
		local inv=meta:get_inventory()
		if stack:get_name() == meta:get_string("item") then
		meta:set_int("item_amount",meta:get_int("item_amount")+stack:get_count())
		stack:clear()
		return stack
		end
		if meta:get_int("item_amount") == 0 then
		meta:set_int("item_amount",meta:get_int("item_amount")+stack:get_count())
		meta:set_string("item",stack:get_name())
		update_item(pos,node)
		stack:clear()
		return stack
		end
		end,
		can_insert=function(pos,node,stack,direction)
		local meta=minetest.env:get_meta(pos)
		local inv=meta:get_inventory()
		if stack:get_name() == meta:get_string("item") then
		return true
			end
			if meta:get_int("item_amount") == 0 then
		return true
			end
		end,
		},
	legacy_facedir_simple = true,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		local item = ""
		local item_amount = 0

	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		if not(meta:get_string("item") == "")then
			return false
			end
		return true
	end,
	on_rightclick = function(pos, node, player, itemstack)
		local keys = {}
	local itemp = itemstack
	local meta = minetest.env:get_meta(pos); 
if itemstack:get_stack_max() > 1 then
if meta:get_string("item") == itemstack:get_name()  then
meta:set_int("item_amount",meta:get_int("item_amount")+itemstack:get_count())
minetest.debug(meta:get_int("item_amount"))
itemstack:clear()
end
if meta:get_string("item") == "" then
meta:set_string("item",itemp:get_name() )
meta:set_int("item_amount",meta:get_int("item_amount")+itemstack:get_count())
minetest.debug(meta:get_int("item_amount"))
itemstack:clear()
update_item(pos,node)
end
end
if itemstack:get_name() == "barrels:barrels_checker" then
local items_amount = meta:get_int("item_amount")
minetest.chat_send_player(player:get_player_name(),items_amount.." "..meta:get_string("item"),true)
end
end,
})

minetest.register_on_punchnode(function(pos, node, puncher)
	if node.name == "barrels:barrel" then
			local keys = {}
		keys = puncher:get_player_control()
		local meta = minetest.env:get_meta(pos); 
		local stack1 = meta:get_string("item")
		local stack2 = stack1.." 99"
		local items = meta:get_int("item_amount")
		local inv=puncher:get_inventory()
		local room1 = inv:room_for_item("main",stack2)
		if keys["sneak"] == true then
	if meta:get_int("item_amount")  >= 99 then

		if room1 == true then
			inv:add_item("main",stack2)
		end
		if room1 == false then
		minetest.env:add_item(puncher:getpos(),stack2)
		end

		meta:set_int("item_amount",meta:get_int("item_amount")-99)
		if meta:get_int("item_amount") < 1 then
		meta:set_string("item","")
		meta:set_int("item_amount",0)
		update_item(pos,node)
		end
		return
	end
	if meta:get_int("item_amount")  < 99 then
		if meta:get_int("item_amount")  > 0 then
		local stack2 = stack1.." "..items
		local room1 = inv:room_for_item("main",stack2)
		if room1 == true then
			inv:add_item("main",stack2)
		end
		if room1 == false then
			minetest.env:add_item(puncher:getpos(),stack2)
		end
		meta:set_int("item_amount",meta:get_int("item_amount")-meta:get_int("item_amount"))
		if meta:get_int("item_amount") < 1 then
			meta:set_string("item","")
			meta:set_int("item_amount",0)
			update_item(pos,node)
		end
		end
		return
	end
end
	if keys["sneak"] == false then
			local room1 = inv:room_for_item("main",stack1)
		if room1 == true then
			inv:add_item("main",stack1)
		end
		if room1 == false then
			minetest.env:add_item(puncher:getpos(),stack1)
		end
		meta:set_int("item_amount",meta:get_int("item_amount")-1)
		if meta:get_int("item_amount") < 1 then
			meta:set_string("item","")
			meta:set_int("item_amount",0)
			update_item(pos,node)
		end
		return
end
end
end)

minetest.register_alias("locked_barrel","barrels:locked_barrel")
minetest.register_craft({
	output = 'barrels:locked_barrel,2',
	recipe = {
		{'default:tree','default:tree', 'default:tree'},
		{'default:tree', 'default:steel_ingot', 'default:tree'},
		{'default:tree', 'default:tree', 'default:tree'},
	}
})

minetest.register_node("barrels:locked_barrel", {
	description = "Locked Barrel",
	tiles = {"barrels_locked_barrel_side.png"},
	paramtype2 = "facedir",
	groups = {cracky=2,},
	legacy_facedir_simple = true,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		local item = ""
		local item_amount = 0
	end,
after_place_node = function(pos, placer)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("owner",placer:get_player_name())

	end,
	
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		if not(meta:get_string("item") == "")then
			return false
			end
		return true
	end,
	on_rightclick = function(pos, node, player, itemstack)
		local keys = {}
	local itemp = itemstack
	local meta = minetest.env:get_meta(pos); 
if player:get_player_name() == meta:get_string("owner") then
if itemstack:get_stack_max() > 1 then
if meta:get_string("item") == itemstack:get_name()  then
meta:set_int("item_amount",meta:get_int("item_amount")+itemstack:get_count())
minetest.debug(meta:get_int("item_amount"))
itemstack:clear()
end
if meta:get_string("item") == "" then
meta:set_string("item",itemp:get_name() )
meta:set_int("item_amount",meta:get_int("item_amount")+itemstack:get_count())
minetest.debug(meta:get_int("item_amount"))
itemstack:clear()
update_item(pos,node)
end
end
if itemstack:get_name() == "barrels:barrels_checker" then
local items_amount = meta:get_int("item_amount")
minetest.chat_send_player(player:get_player_name(),items_amount.." "..meta:get_string("item"),true)
end
end
end,
})

minetest.register_on_punchnode(function(pos, node, puncher)
	if node.name == "barrels:locked_barrel" then
			local keys = {}
		keys = puncher:get_player_control()
		local meta = minetest.env:get_meta(pos); 
		local stack1 = meta:get_string("item")
minetest.debug(puncher:get_player_name())
minetest.debug(meta:get_string("owner"))
if puncher:get_player_name() == meta:get_string("owner") then
		local stack2 = stack1.." 99"
		local items = meta:get_int("item_amount")
		if keys["sneak"] == true then
	if meta:get_int("item_amount")  >= 99 then

		minetest.env:add_item(puncher:getpos(),stack2)
		meta:set_int("item_amount",meta:get_int("item_amount")-99)
		if meta:get_int("item_amount") < 1 then
		meta:set_string("item","")
		meta:set_int("item_amount",0)
		update_item(pos,node)
		end
		return
	end
	if meta:get_int("item_amount")  < 99 then
		if meta:get_int("item_amount")  > 0 then
		local stack2 = stack1.." "..items
		minetest.env:add_item(puncher:getpos(),stack2)
		meta:set_int("item_amount",meta:get_int("item_amount")-meta:get_int("item_amount"))
		if meta:get_int("item_amount") < 1 then
			meta:set_string("item","")
			meta:set_int("item_amount",0)
			update_item(pos,node)
		end
		end
		return
	end
end
	if keys["sneak"] == false then
		minetest.env:add_item(puncher:getpos(),stack1)
		meta:set_int("item_amount",meta:get_int("item_amount")-1)
		if meta:get_int("item_amount") < 1 then
			meta:set_string("item","")
			meta:set_int("item_amount",0)
			update_item(pos,node)
		end
		return
end
end
end
end)

minetest.register_abm({
	nodenames = {"barrels:barrel","barrels:locked_barrel"},
	interval = 1.0,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		update_item(pos,node)
	end,
}) 