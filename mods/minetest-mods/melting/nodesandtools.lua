--Nodes/Items
minetest.register_node("melting:moltenrock", {
	description = "Molten Rock",
	inventory_image = minetest.inventorycube("moltenrock.png"),
	tiles = {
		"moltenrock.png"
	},
	paramtype = "light",
	light_source = 10,
	groups = {cracky=1, hot=3, igniter=1, lava=3},
		sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("melting:molten_brick", {
	description = "Molten Brick",
	inventory_image = minetest.inventorycube("molten_brick.png"),
	tiles = {
		"molten_brick.png"
	},
	paramtype = "light",
	light_source = 10,
	groups = {cracky=1, hot=3, igniter=1, lava=3},
		sounds = default.node_sound_stone_defaults(),
})

minetest.register_alias("melting:obsidian_brick","default:obsidian_brick")

minetest.register_node("melting:obsidian_brick", {
	description = "Obsidian Brick",
	inventory_image = minetest.inventorycube("obsidian_brick.png"),
	tiles = {
		"obsidian_brick.png"
	},
	paramtype = "facedir",
	groups = {cracky=1},
		sounds = default.node_sound_stone_defaults(),
})

minetest.register_tool("melting:pick_obsidian", {
	description = "Obsidian Pickaxe",
	inventory_image = "tool_obsidianpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.8, [2]=0.6, [3]=0.4}, uses=50, maxlevel=3},
			fleshy = {times={[1]=0.8, [2]=0.6, [3]=0.4}, uses=500, maxlevel=3},
			snappy = {times={[1]=0.8, [2]=0.6, [3]=0.4}, uses=500, maxlevel=3},
			choppy = {times={[1]=0.8, [2]=0.6, [3]=0.4}, uses=500, maxlevel=3},

		},
	},
})
