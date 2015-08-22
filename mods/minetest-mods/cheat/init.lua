minetest.register_craft({
	output = 'default:gravel',
	recipe = {
		{'group:stone'},
	}
})

minetest.register_craft({
	output = 'default:coal_lump 99',
	recipe = {
		{'group:fun'},
		{'group:fun'},
	}
})

minetest.register_craft({
	output = 'default:iron_lump 99',
	recipe = {
		{'group:fun'},
		{'group:fun'},
		{'group:fun'},
	}
})

minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{'default:gravel'},
		{'default:gravel'},
		{'default:gravel'},
	}
})
--[[
minetest.register_craft({
	output = 'default:tree',
	recipe = {
		{'default:dirt'},
		{'default:dirt'},
	}
})

minetest.register_craft({
	output = 'default:water_source',
	recipe = {
		{'default:dirt'},
		{'default:dirt'},
		{'default:dirt'},
	}
})
]]
minetest.register_craft({
	output = 'default:water_source',
	recipe = {
		{'default:iron_lump'},
		{'default:coal_lump'},
		{'default:iron_lump'},
	}
})
