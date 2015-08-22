-- Kalite (Makes a Red Torch and Heals)
minetest.register_node("moregloop:small_kalite", {
	description = "Small Kalite Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_kalite_shard.png"),
	tiles = {"default_stone.png^moregloop_kalite_shard.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1, gloop=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:kalite_shard'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:medium_kalite", {
	description = "Medium Kalite Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_kalite_crystal.png"),
	tiles = {"default_stone.png^moregloop_kalite_crystal.png"},
	is_ground_content = true,
	groups = {cracky=2, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:kalite_crystal'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:large_kalite", {
	description = "Large Kalite Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_kalite_gem.png"),
	tiles = {"default_stone.png^moregloop_kalite_gem.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:kalite_gem'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

-- Alatro
minetest.register_node("moregloop:small_alatro", {
	description = "Small Alatro Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_alatro_shard.png"),
	tiles = {"default_stone.png^moregloop_alatro_shard.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1, gloop=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:alatro_shard'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:medium_alatro", {
	description = "Medium Alatro Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_alatro_crystal.png"),
	tiles = {"default_stone.png^moregloop_alatro_crystal.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:alatro_crystal'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:large_alatro", {
	description = "Large Alatro Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_alatro_gem.png"),
	tiles = {"default_stone.png^moregloop_alatro_gem.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:alatro_gem'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

-- Arol
minetest.register_node("moregloop:small_arol", {
	description = "Small Arol Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_arol_shard.png"),
	tiles = {"default_stone.png^moregloop_arol_shard.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1, gloop=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:arol_shard'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:medium_arol", {
	description = "Medium Arol Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_arol_crystal.png"),
	tiles = {"default_stone.png^moregloop_arol_crystal.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:arol_crystal'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:large_arol", {
	description = "Large Arol Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_arol_gem.png"),
	tiles = {"default_stone.png^moregloop_arol_gem.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:arol_gem'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

-- Akalin
minetest.register_node("moregloop:small_akalin", {
	description = "Small Akalin Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_akalin_shard.png"),
	tiles = {"default_stone.png^moregloop_akalin_shard.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1, gloop=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:akalin_shard'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:medium_akalin", {
	description = "Medium Akalin Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_akalin_crystal.png"),
	tiles = {"default_stone.png^moregloop_akalin_crystal.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:akalin_crystal'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:large_akalin", {
	description = "Large Akalin Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_akalin_gem.png"),
	tiles = {"default_stone.png^moregloop_akalin_gem.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:akalin_gem'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

-- Talinite
minetest.register_node("moregloop:small_talinite", {
	description = "Small Talinite Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_talinite_shard.png"),
	tiles = {"default_stone.png^moregloop_talinite_shard.png"},
	is_ground_content = true,
	light_source = 3,
	groups = {cracky=1, stone=1, gloop=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:talinite_shard'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:medium_talinite", {
	description = "Medium Talinite Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_talinite_crystal.png"),
	tiles = {"default_stone.png^moregloop_talinite_crystal.png"},
	is_ground_content = true,
	light_source = 5,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:talinite_crystal'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("moregloop:large_talinite", {
	description = "Large Talinite Ore",
	inventory_image = minetest.inventorycube("default_stone.png^moregloop_talinite_gem.png"),
	tiles = {"default_stone.png^moregloop_talinite_gem.png"},
	is_ground_content = true,
	light_source = 10,
	groups = {cracky=1, stone=1},
	drop = {
		max_items = 2,
		items = {
			{ items = {'default:cobble'} },
			{ items = {'moregloop:talinite_gem'} }
			}
	} ,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

--The Blocks
minetest.register_node("moregloop:arol_block", {
	description = "Arol Block",
	tiles = {"moregloop_arol_block.png"},
	is_ground_content = true,
	groups = {snappy=1,bendy=1,cracky=2,level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("moregloop:alatro_block", {
	description = "Alatro Block",
	tiles = {"moregloop_alatro_block.png"},
	is_ground_content = true,
	groups = {snappy=1,bendy=1,cracky=2,level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("moregloop:talinite_block", {
	description = 'Talinite Block',
	tiles = {"moregloop_talinite_block.png"},
	is_ground_content = true,
	light_source = LIGHT_MAX,
	groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("moregloop:akalin_block", {
	description = "Akalin Block",
	tiles = {"moregloop_akalin_block.png"},
	is_ground_content = true,
	groups = {snappy=1,bendy=2,cracky=3,level=2},
	sounds = default.node_sound_stone_defaults()
})