minetest.register_node("taint:taint", {	
	description = "Tainted Block",
	tiles = {"taint.png"}
})
minetest.register_node("taint:tainted_log", {
	description = "Tainted Log",
	tiles = {"taintedLogTop.png", "taintedLog.png"}
})
minetest.register_node("taint:tainted_leaves", {
	description = "Tainted Leaves",
	tiles = {"taintedLeaves.png"},
	drawtype = "allfaces_optional",
	paramtype = "light",
	groups = {cracky=3}
})
minetest.register_node("taint:tainted_apple", {
	description = "Tainted Apple",
	tiles = {"taintedApple.png"},
	drawtype = "plantlike",
	paramtype = "light",
	groups = {cracky=3}
})
minetest.register_node("taint:tainted_log", {
	description = "Tainted Log",
	tiles = {"taintedWood.png"}
})
minetest.register_node("taint:taint_crystal", {
	description = "Taint Crystal in Taint Resistant Stone",
	tiles = {"taintCrystal.png"},
	groups = {cracky=1},
	on_dig = function(pos, node, digger)
		digger:get_inventory():add_item('main', 'taint:taint_shard')
		minetest.env:remove_node(pos)
	end
})
minetest.register_craftitem("taint:taint_shard", {
	description = "A Shard Of Taint",
	inventory_image = "taintShard.png"
})
minetest.register_craft({
	output = "taint:taint",
	recipe = {{"taint:taint_shard", "taint:taint_shard", "taint:taint_shard"},
			  {"taint:taint_shard", "taint:taint_shard", "taint:taint_shard"},
			  {"taint:taint_shard", "taint:taint_shard", "taint:taint_shard"}}
})


minetest.register_abm({
	nodenames = "taint:taint",
	neighbors = {"default:dirt_with_grass", "default:dirt", "default:stone", "default:sand", "default:tree", "default:wood"},
	interval = 1,
	chance = 50,
	action = function(pos, node)
		pos.x = pos.x + 1
		if (minetest.get_node(pos).name == "default:dirt_with_grass" or minetest.get_node(pos).name == "default:dirt" or minetest.get_node(pos).name == "default:stone" or minetest.get_node(pos).name == "default:sand") then
			minetest.add_node(pos, {name="taint:taint"})
		end
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:wood") then
			minetest.add_node(pos, {name="taint:tainted_wood"})
		end
		pos.x = pos.x - 2
		if (minetest.get_node(pos).name == "default:dirt_with_grass" or minetest.get_node(pos).name == "default:dirt" or minetest.get_node(pos).name == "default:stone" or minetest.get_node(pos).name == "default:sand") then
			minetest.add_node(pos, {name="taint:taint"})
		end
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:wood") then
			minetest.add_node(pos, {name="taint:tainted_wood"})
		end
		pos.x = pos.x + 1
		pos.z = pos.z + 1
		if (minetest.get_node(pos).name == "default:dirt_with_grass" or minetest.get_node(pos).name == "default:dirt" or minetest.get_node(pos).name == "default:stone" or minetest.get_node(pos).name == "default:sand") then
			minetest.add_node(pos, {name="taint:taint"})
		end
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:wood") then
			minetest.add_node(pos, {name="taint:tainted_wood"})
		end
		pos.z = pos.z - 2
		if (minetest.get_node(pos).name == "default:dirt_with_grass" or minetest.get_node(pos).name == "default:dirt" or minetest.get_node(pos).name == "default:stone" or minetest.get_node(pos).name == "default:sand") then
			minetest.add_node(pos, {name="taint:taint"})
		end
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:wood") then
			minetest.add_node(pos, {name="taint:tainted_wood"})
		end
		pos.z = pos.z + 1
		pos.y = pos.y + 1
		if (minetest.get_node(pos).name == "default:dirt_with_grass" or minetest.get_node(pos).name == "default:dirt" or minetest.get_node(pos).name == "default:stone" or minetest.get_node(pos).name == "default:sand") then
			minetest.add_node(pos, {name="taint:taint"})
		end
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:wood") then
			minetest.add_node(pos, {name="taint:tainted_wood"})
		end
		pos.y = pos.y - 2
		if (minetest.get_node(pos).name == "default:dirt_with_grass" or minetest.get_node(pos).name == "default:dirt" or minetest.get_node(pos).name == "default:stone" or minetest.get_node(pos).name == "default:sand") then
			minetest.add_node(pos, {name="taint:taint"})
		end
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:wood") then
			minetest.add_node(pos, {name="taint:tainted_wood"})
		end
	end
})
minetest.register_abm({
	nodenames = "taint:tainted_log",
	neighbors = {"default:tree", "default:leaves"},
	interval = 1,
	chance = 5,
	action = function(pos, node)
		pos.x = pos.x + 1
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		pos.x = pos.x - 2
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		pos.x = pos.x + 1
		pos.z = pos.z + 1
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		pos.z = pos.z - 2
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		pos.z = pos.z + 1
		pos.y = pos.y + 1
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		pos.y = pos.y - 2
		if (minetest.get_node(pos).name == "default:tree") then
			minetest.add_node(pos, {name="taint:tainted_log"})
		end
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
	end
})
minetest.register_abm({
	nodenames = "taint:tainted_leaves",
	neighbors = {"default:leaves"},
	inverval = 1,
	chance = 2,
	action = function(pos, node)
		pos.x = pos.x + 1
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		if (minetest.get_node(pos).name == "default:apple") then
			minetest.add_node(pos, {name="taint:tainted_apple"})
		end
		pos.x = pos.x - 2
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		if (minetest.get_node(pos).name == "default:apple") then
			minetest.add_node(pos, {name="taint:tainted_apple"})
		end
		pos.x = pos.x + 1
		pos.z = pos.z + 1
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		if (minetest.get_node(pos).name == "default:apple") then
			minetest.add_node(pos, {name="taint:tainted_apple"})
		end
		pos.z = pos.z - 2
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		if (minetest.get_node(pos).name == "default:apple") then
			minetest.add_node(pos, {name="taint:tainted_apple"})
		end
		pos.z = pos.z + 1
		pos.y = pos.y + 1
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		if (minetest.get_node(pos).name == "default:apple") then
			minetest.add_node(pos, {name="taint:tainted_apple"})
		end
		pos.y = pos.y - 2
		if (minetest.get_node(pos).name == "default:leaves") then
			minetest.add_node(pos, {name="taint:tainted_leaves"})
		end
		if (minetest.get_node(pos).name == "default:apple") then
			minetest.add_node(pos, {name="taint:tainted_apple"})
		end
	end
})


minetest.register_on_generated(function(maxp, minp, seed)
	if (maxp.y > -1500) then return end
	local i = 1
	blocksInArea = minetest.find_nodes_in_area(maxp, minp, {"default:stone"})
	while (blocksInArea[i] ~= nil) do
		if (math.random(1,1500) == 750) then
			minetest.add_node(blocksInArea[i], {name="taint:taint_crystal"})
		end
		i = i + 1
	end
end)