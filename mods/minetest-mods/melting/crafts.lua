--Crafts
minetest.register_craft({
	type = "fuel",
	recipe = "melting:moltenrock",
	burntime = 3000,
})

minetest.register_craft({
	output = 'melting:pick_obsidian',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'melting:obsidian_brick 5',
	recipe = {
		{'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian'},
	}
})

minetest.register_craft({
	output = 'default:obsidian 4',
	recipe = {
		{'melting:obsidian_brick'},
	}
})

minetest.register_craft({
	output = 'melting:molten_brick 3',
	recipe = {
		{'melting:moltenrock', 'melting:moltenrock'},
		{'melting:moltenrock', 'melting:moltenrock'},
	}
})

minetest.register_craft({
	output = 'default:torch 20',
	recipe = {
		{'', 'melting:moltenrock', ''},
		{'', 'group:stick', ''},
	}
})