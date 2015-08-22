--The Crafts
minetest.register_craft( {
	output = 'moregloop:alatro_shard 1',
	recipe = {
		{"group:gloop"},
	}
})

minetest.register_craft( {
	output = 'moregloop:arol_shard 1',
	recipe = {
		{"group:gloop"},
		{"group:gloop"},
	}
})

minetest.register_craft( {
	output = 'moregloop:akalin_shard 1',
	recipe = {
		{"group:gloop"},
		{"group:gloop"},
		{"group:gloop"},
	}
})

minetest.register_craft( {
	output = 'moregloop:kalite_crystal 3',
	recipe = {
		{"moregloop:kalite_shard","moregloop:kalite_shard"},
		{"moregloop:kalite_shard","moregloop:kalite_shard"},
	}
})

minetest.register_craft( {
	output = 'moregloop:kalite_gem 3',
	recipe = {
		{"moregloop:kalite_crystal","moregloop:kalite_crystal"},
		{"moregloop:kalite_crystal","moregloop:kalite_crystal"},
	}
})

minetest.register_craft({
	output = 'moregloop:kalite_torch 4',
	recipe = {
		{'moregloop:kalite_gem'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'moregloop:kalite_torch 2',
	recipe = {
		{'moregloop:kalite_crystal'},
		{'default:stick'},
	}
})

minetest.register_craft({
	output = 'moregloop:kalite_torch 1',
	recipe = {
		{'moregloop:kalite_shard'},
		{'default:stick'},
	}
})

minetest.register_craft( {
	output = 'moregloop:arol_crystal 3',
	recipe = {
		{"moregloop:arol_shard","moregloop:arol_shard"},
		{"moregloop:arol_shard","moregloop:arol_shard"},
	}
})

minetest.register_craft( {
	output = 'moregloop:arol_gem 3',
	recipe = {
		{"moregloop:arol_crystal","moregloop:arol_crystal"},
		{"moregloop:arol_crystal","moregloop:arol_crystal"},
	}
})

minetest.register_craft({
	output = 'moregloop:arol_pick',
	recipe = {
		{'moregloop:arol_gem', 'moregloop:arol_gem', 'moregloop:arol_gem'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'moregloop:arol_block 3',
	recipe = {
		{"moregloop:arol_gem","moregloop:arol_gem"},
		{"moregloop:arol_gem","moregloop:arol_gem"},
	}
})

minetest.register_craft( {
	output = 'moregloop:alatro_crystal 3',
	recipe = {
		{"moregloop:alatro_shard","moregloop:alatro_shard"},
		{"moregloop:alatro_shard","moregloop:alatro_shard"},
	}
})

minetest.register_craft( {
	output = 'moregloop:alatro_gem 3',
	recipe = {
		{"moregloop:alatro_crystal","moregloop:alatro_crystal"},
		{"moregloop:alatro_crystal","moregloop:alatro_crystal"},
	}
})

minetest.register_craft( {
	output = 'moregloop:alatro_block 3',
	recipe = {
		{"moregloop:alatro_gem","moregloop:alatro_gem"},
		{"moregloop:alatro_gem","moregloop:alatro_gem"},
	}
})

minetest.register_craft({
	output = 'moregloop:alatro_pick',
	recipe = {
		{'moregloop:alatro_gem', 'moregloop:alatro_gem', 'moregloop:alatro_gem'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft( {
	output = 'moregloop:akalin_crystal 3',
	recipe = {
		{"moregloop:akalin_shard","moregloop:akalin_shard"},
		{"moregloop:akalin_shard","moregloop:akalin_shard"},
	}
})

minetest.register_craft( {
	output = 'moregloop:akalin_gem 3',
	recipe = {
		{"moregloop:akalin_crystal","moregloop:akalin_crystal"},
		{"moregloop:akalin_crystal","moregloop:akalin_crystal"},
	}
})

minetest.register_craft( {
	output = 'moregloop:akalin_block 3',
	recipe = {
		{"moregloop:akalin_gem","moregloop:akalin_gem"},
		{"moregloop:akalin_gem","moregloop:akalin_gem"},
	}
})

minetest.register_craft({
	output = 'moregloop:akalin_pick',
	recipe = {
		{'moregloop:akalin_gem', 'moregloop:akalin_gem', 'moregloop:akalin_gem'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craft({
	output = 'default:torch 5',
	recipe = {
		{'moregloop:kalite_torch'},
	}
})

minetest.register_craft( {
	output = 'moregloop:talinite_crystal 3',
	recipe = {
		{"moregloop:talinite_shard","moregloop:talinite_shard"},
		{"moregloop:talinite_shard","moregloop:talinite_shard"},
	}
})

minetest.register_craft( {
	output = 'moregloop:talinite_gem 3',
	recipe = {
		{"moregloop:talinite_crystal","moregloop:talinite_crystal"},
		{"moregloop:talinite_crystal","moregloop:talinite_crystal"},
	}
})

minetest.register_craft( {
	output = 'moregloop:talinite_block 3',
	recipe = {
		{"moregloop:talinite_gem","moregloop:talinite_gem"},
		{"moregloop:talinite_gem","moregloop:talinite_gem"},
	}
})

-- Fuel
minetest.register_craft({
	type = "fuel",
	recipe = "moregloop:kalite_gem",
	burntime = 300,
})

minetest.register_craft({
	type = "fuel",
	recipe = "moregloop:kalite_crystal",
	burntime = 100,
})

minetest.register_craft({
	type = "fuel",
	recipe = "moregloop:kalite_shard",
	burntime = 33,
})
