local S = gold_and_gem.gettext

local border_block_materials = {
	{ "golden",				" with golden border"},
	{ "mithril",			" with Mithril-border" }
}


minetest.register_node("gold_and_gem:golden_mithril_block", {
	description = "Mithril Block with golden border",
	tiles = {"goldgem_golden_mithril_block.png"},
	is_ground_content = false,
	groups = {bendy=3,cracky=2,level=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gold_and_gem:mithril_goldblock", {
	description = "Gold Block with Mithril-border",
	tiles = {"goldgem_mithril_gold_block.png"},
	is_ground_content = false,
	groups = {bendy=3,cracky=2,level=1},
	sounds = default.node_sound_stone_defaults(),
})


for i in ipairs(border_block_materials) do
	local border = border_block_materials[i][1]
	local name = border_block_materials[i][2]


	minetest.register_node("gold_and_gem:"..border.."_diamondblock", {
		description = "Diamond Block"..name,
		tiles = {"goldgem_"..border.."_diamond_block.png"},
		is_ground_content = false,
		groups = {cracky=1,level=3},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_glass", {
		description = "Glass"..name,
		drawtype = "glasslike",
		tiles = {"goldgem_"..border.."_glass.png"},
		paramtype = "light",
		inventory_image = minetest.inventorycube("goldgem_"..border.."_glass.png"),
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {cracky=3,oddly_breakable_by_hand=3},
		sounds = default.node_sound_glass_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_silver_block", {
		description = "Silver Block"..name,
		tiles = {"goldgem_"..border.."_silver_block.png"},
		is_ground_content = false,
		groups = {bendy=3,cracky=2,level=1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_amethystblock", {
		description = "Amethyst Block"..name,
		tiles = {"goldgem_"..border.."_amethyst_block.png"},
		is_ground_content = false,
		groups = {bendy=3,cracky=2,level=1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_emeraldblock", {
		description = "Emerald Block"..name,
		tiles = {"goldgem_"..border.."_emerald_block.png"},
		is_ground_content = false,
		groups = {bendy=3,cracky=2,level=1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_rubyblock", {
		description = "Ruby Block"..name,
		tiles = {"goldgem_"..border.."_ruby_block.png"},
		is_ground_content = false,
		groups = {bendy=3,cracky=2,level=1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_sapphireblock", {
		description = "Sapphire Block"..name,
		tiles = {"goldgem_"..border.."_sapphire_block.png"},
		is_ground_content = false,
		groups = {bendy=3,cracky=2,level=1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_topazblock", {
		description = "Topaz Block"..name,
		tiles = {"goldgem_"..border.."_topaz_block.png"},
		is_ground_content = false,
		groups = {bendy=3,cracky=2,level=1},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_crystal_glass", {
		description = "Crystal Glass"..name,
		drawtype = "glasslike",
		inventory_image = minetest.inventorycube("goldgem_"..border.."_crystal_glass.png"),
		tiles = {"goldgem_"..border.."_crystal_glass.png"},
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {cracky=3},
		sounds = default.node_sound_glass_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_taliniteblock", {
		description = "Talinite Block"..name,
		tiles = {"goldgem_"..border.."_talinite_block.png"},
		is_ground_content = false,
		light_source = 14,
		groups = {snappy=1,bendy=2,cracky=1,melty=2,level=2},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("gold_and_gem:"..border.."_quartz", {
		description = "Quartz Block"..name,
		tiles = {"goldgem_"..border.."_quartz_block.png"},
		is_ground_content = false,
		groups = {cracky=3},
		sounds = default.node_sound_glass_defaults(),
	})

end

local table_borders = {
	{"gold_glass","Gold"},
	{"mithril_glass","Mithril"},
	{"ruby_glass","Ruby"},
	{"emerald_glass","Emerald"}
}

for i in ipairs(table_borders) do
	local material = table_borders[i][1]
	local border = table_borders[i][2]



-- small square tables

	minetest.register_node("gold_and_gem:"..material.."_table_small_square_b", {
		description = S("Glass Table (Small, Square) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {
			"goldgem_"..material.."_table_small_square_tb.png",
			"goldgem_"..material.."_table_small_square_tb.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png"
		},
		wield_image = "goldgem_"..material.."_table_small_square_tb.png",
		inventory_image = "goldgem_"..material.."_table_small_square_tb.png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3 },
		sounds = default.node_sound_glass_defaults(),
		paramtype2 = "facedir",

		node_box = {
			type = "fixed",
			fixed = {
				{ -0.4375, -0.5, -0.5,     0.4375, -0.4375, 0.5    },
				{ -0.5,    -0.5, -0.4375,  0.5,    -0.4375, 0.4375 }
			},
		},
		selection_box = {
			type = "fixed",
			fixed = { -0.5, -0.5,    -0.5,  0.5,    -0.4375, 0.5 },
		},
		on_place = minetest.rotate_node
	})

	minetest.register_node("gold_and_gem:"..material.."_table_small_square_t", {
		description = S("Glass Table (Small, Square) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {
			"goldgem_"..material.."_table_small_square_tb.png",
			"goldgem_"..material.."_table_small_square_tb.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png"
		},
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3, not_in_creative_inventory=1 },
		sounds = default.node_sound_glass_defaults(),
		paramtype2 = "facedir",

		node_box = {
			type = "fixed",
			fixed = {
				{ -0.4375, 0.4375, -0.5,     0.4375, 0.5, 0.5    },
				{ -0.5,    0.4375, -0.4375,  0.5,    0.5, 0.4375 }
			},
		},
		selection_box = {
			type = "fixed",
			fixed = { -0.5,  0.4375, -0.5,  0.5, 0.5, 0.5 },
		},
		drop = "gold_and_gem:"..material.."_table_small_square_b"
	})

	minetest.register_node("gold_and_gem:"..material.."_table_small_square_s", {
		description = S("Glass Table (Small, Square) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_edges.png",
			"goldgem_"..material.."_table_small_square_tb.png",
			"goldgem_"..material.."_table_small_square_tb.png"
		},
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3, not_in_creative_inventory=1 },
		sounds = default.node_sound_glass_defaults(),
		paramtype2 = "facedir",

		node_box = {
			type = "fixed",
			fixed = {
				{ -0.4375, -0.5,    0.4375, 0.4375, 0.5,    0.5 },
				{ -0.5,    -0.4375, 0.4375, 0.5,    0.4375, 0.5 }
			}
		},
		selection_box = {
			type = "fixed",
			fixed = { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 },
		},
		drop = "gold_and_gem:"..material.."_table_small_square_b"
	})



-- small round tables

	minetest.register_node("gold_and_gem:"..material.."_table_small_round_b", {
		description = S("Glass Table (Small, Round) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {
			"goldgem_"..material.."_table_small_round_tb.png",
			"goldgem_"..material.."_table_small_round_tb.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png"
		},
		wield_image = "goldgem_"..material.."_table_small_round_tb.png",
		inventory_image = "goldgem_"..material.."_table_small_round_tb.png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3 },
		sounds = default.node_sound_glass_defaults(),
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed = {
				{ -0.25,   -0.5, -0.5,    0.25,   -0.4375, 0.5    },
				{ -0.375,  -0.5, -0.4375, 0.375,  -0.4375, 0.4375 },
				{ -0.5,    -0.5, -0.25,   0.5,    -0.4375, 0.25   },
				{ -0.4375, -0.5, -0.375,  0.4375, -0.4375, 0.375  },
				{ -0.25,   -0.5, -0.5,    0.25,   -0.4375, 0.5    },
			}
		},
		selection_box = {
			type = "fixed",
			fixed = { -0.5, -0.5, -0.5, 0.5, -0.4375, 0.5 },
		},
		on_place = minetest.rotate_node
	})

	minetest.register_node("gold_and_gem:"..material.."_table_small_round_t", {
		description = S("Glass Table (Small, Round) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {
			"goldgem_"..material.."_table_small_round_tb.png",
			"goldgem_"..material.."_table_small_round_tb.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png"
		},
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3, not_in_creative_inventory=1 },
		sounds = default.node_sound_glass_defaults(),
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed = {
				{ -0.25,   0.4375, -0.5,    0.25,   0.5, 0.5    },
				{ -0.375,  0.4375, -0.4375, 0.375,  0.5, 0.4375 },
				{ -0.5,    0.4375, -0.25,   0.5,    0.5, 0.25   },
				{ -0.4375, 0.4375, -0.375,  0.4375, 0.5, 0.375  },
				{ -0.25,   0.4375, -0.5,    0.25,   0.5, 0.5    },
			}
		},
		selection_box = {
			type = "fixed",
			fixed =    { -0.5, 0.4375, -0.5, 0.5, 0.5, 0.5 },
		},
		drop = "gold_and_gem:"..material.."_table_small_round_b"
	})

	minetest.register_node("gold_and_gem:"..material.."_table_small_round_s", {
		description = S("Glass Table (Small, Round) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {

			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_edges.png",
			"goldgem_"..material.."_table_small_round_tb.png",
			"goldgem_"..material.."_table_small_round_tb.png"
		},
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3, not_in_creative_inventory=1 },
		sounds = default.node_sound_glass_defaults(),
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed = {
				{ -0.25,   -0.5,    0.4375,  0.25,   0.5,    0.5 },
				{ -0.375,  -0.4375, 0.4375,  0.375,  0.4375, 0.5 },
				{ -0.5,    -0.25,   0.4375,  0.5,    0.25,   0.5 },
				{ -0.4375, -0.375,  0.4375,  0.4375, 0.375,  0.5 },
				{ -0.25,   -0.5,    0.4375,  0.25,   0.5,    0.5 },
			}
		},
		selection_box = {
			type = "fixed",
			fixed =   { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 },
		},
		drop = "gold_and_gem:"..material.."_table_small_round_b"
	})

-- Large square table pieces

	minetest.register_node("gold_and_gem:"..material.."_table_large_b", {
		description = S("Glass Table (Large) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {
			"goldgem_"..material.."_table_large_tb.png",
			"goldgem_"..material.."_table_large_tb.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png"
		},
		wield_image = "goldgem_"..material.."_table_large_tb.png",
		inventory_image = "goldgem_"..material.."_table_large_tb.png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3 },
		sounds = s,
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed = { -0.5, -0.5, -0.5, 0.5, -0.4375, 0.5 },
		},
		selection_box = {
			type = "fixed",
			fixed = { -0.5, -0.5, -0.5, 0.5, -0.4375, 0.5 },
		},
		on_place = minetest.rotate_node
	})

	minetest.register_node("gold_and_gem:"..material.."_table_large_t", {
		description = S("Glass Table (Large) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {
			"goldgem_"..material.."_table_large_tb.png",
			"goldgem_"..material.."_table_large_tb.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png"
		},
		wield_image ="goldgem_"..material.."_table_large_tb.png",
		inventory_image = "goldgem_"..material.."_table_large_tb.png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3, not_in_creative_inventory=1 },
		sounds = s,
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed =    { -0.5, 0.4375, -0.5, 0.5, 0.5, 0.5 },
		},
		selection_box = {
			type = "fixed",
			fixed =    { -0.5, 0.4375, -0.5, 0.5, 0.5, 0.5 },
		},
		drop = "goldgem_"..material.."_table_large_b"
	})

	minetest.register_node("gold_and_gem:"..material.."_table_large_s", {
		description = S("Glass Table (Large) with "..border.." Border"),
		drawtype = "nodebox",
		tiles = {

			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_edges.png",
			"goldgem_"..material.."_table_large_tb.png",
			"goldgem_"..material.."_table_large_tb.png"
		},
		wield_image = "goldgem_"..material.."_table_large_tb.png",
		inventory_image = "goldgem_"..material.."_table_large_tb.png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = true,
		groups = { snappy = 3, not_in_creative_inventory=1 },
		sounds = s,
		paramtype2 = "facedir",
		node_box = {
			type = "fixed",
			fixed =   { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 },
		},
		selection_box = {
			type = "fixed",
			fixed =   { -0.5, -0.5, 0.4375, 0.5, 0.5, 0.5 },
		},
		drop ="goldgem_"..material.."_table_large_b"
	})

	minetest.register_alias("gold_and_gem_"..material.."_table_large","gold_and_gem_"..material.."_table_large_b")
	minetest.register_alias("gold_and_gem_"..material.."_table_small_square","gold_and_gem_"..material.."_table_small_square_b")
	minetest.register_alias("gold_and_gem_"..material.."_table_small_round", "gold_and_gem_"..material.."_table_small_round_b")

end






local function placeRubyLamp(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local dir = {
				x = p1.x - p0.x,
				y = p1.y - p0.y,
				z = p1.z - p0.z
			}
			param2 = minetest.dir_to_facedir(dir,false)
			local correct_rotation={
				[0]=0,
				[1]=1,
				[2]=2,
				[3]=3
			}



				if p0.y == p1.y then
				--place torch on wall
				minetest.add_node(p1, {name="gold_and_gem:ruby_lamp_wall",param2=correct_rotation[param2]})
				else
				--place torch on floor
				minetest.add_node(p1, {name="gold_and_gem:ruby_lamp"})
				--return minetest.item_place(itemstack, placer, pointed_thing, param2)
				end
			itemstack:take_item()
			return itemstack

end

local function placeEmeraldLamp(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local dir = {
				x = p1.x - p0.x,
				y = p1.y - p0.y,
				z = p1.z - p0.z
			}
			param2 = minetest.dir_to_facedir(dir,false)
			local correct_rotation={
				[0]=0,
				[1]=1,
				[2]=2,
				[3]=3
			}



				if p0.y == p1.y then
				--place torch on wall
				minetest.add_node(p1, {name="gold_and_gem:emerald_lamp_wall",param2=correct_rotation[param2]})
				else
				--place torch on floor
				minetest.add_node(p1, {name="gold_and_gem:emerald_lamp"})
				--return minetest.item_place(itemstack, placer, pointed_thing, param2)
				end
			itemstack:take_item()
			return itemstack

end

local function placeTopazLamp(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local dir = {
				x = p1.x - p0.x,
				y = p1.y - p0.y,
				z = p1.z - p0.z
			}
			param2 = minetest.dir_to_facedir(dir,false)
			local correct_rotation={
				[0]=0,
				[1]=1,
				[2]=2,
				[3]=3
			}



				if p0.y == p1.y then
				--place torch on wall
				minetest.add_node(p1, {name="gold_and_gem:topaz_lamp_wall",param2=correct_rotation[param2]})
				else
				--place torch on floor
				minetest.add_node(p1, {name="gold_and_gem:topaz_lamp"})
				--return minetest.item_place(itemstack, placer, pointed_thing, param2)
				end
			itemstack:take_item()
			return itemstack

end

local function placeSapphireLamp(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local dir = {
				x = p1.x - p0.x,
				y = p1.y - p0.y,
				z = p1.z - p0.z
			}
			param2 = minetest.dir_to_facedir(dir,false)
			local correct_rotation={
				[0]=0,
				[1]=1,
				[2]=2,
				[3]=3
			}



				if p0.y == p1.y then
				--place torch on wall
				minetest.add_node(p1, {name="gold_and_gem:sapphire_lamp_wall",param2=correct_rotation[param2]})
				else
				--place torch on floor
				minetest.add_node(p1, {name="gold_and_gem:sapphire_lamp"})
				--return minetest.item_place(itemstack, placer, pointed_thing, param2)
				end
			itemstack:take_item()
			return itemstack

end

local function placeAmethystLamp(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local dir = {
				x = p1.x - p0.x,
				y = p1.y - p0.y,
				z = p1.z - p0.z
			}
			param2 = minetest.dir_to_facedir(dir,false)
			local correct_rotation={
				[0]=0,
				[1]=1,
				[2]=2,
				[3]=3
			}



				if p0.y == p1.y then
				--place torch on wall
				minetest.add_node(p1, {name="gold_and_gem:amethyst_lamp_wall",param2=correct_rotation[param2]})
				else
				--place torch on floor
				minetest.add_node(p1, {name="gold_and_gem:amethyst_lamp"})
				--return minetest.item_place(itemstack, placer, pointed_thing, param2)
				end
			itemstack:take_item()
			return itemstack

end

local function placeDiamondLamp(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local dir = {
				x = p1.x - p0.x,
				y = p1.y - p0.y,
				z = p1.z - p0.z
			}
			param2 = minetest.dir_to_facedir(dir,false)
			local correct_rotation={
				[0]=0,
				[1]=1,
				[2]=2,
				[3]=3
			}



				if p0.y == p1.y then
				--place torch on wall
				minetest.add_node(p1, {name="gold_and_gem:diamond_lamp_wall",param2=correct_rotation[param2]})
				else
				--place torch on floor
				minetest.add_node(p1, {name="gold_and_gem:diamond_lamp"})
				--return minetest.item_place(itemstack, placer, pointed_thing, param2)
				end
			itemstack:take_item()
			return itemstack

end

local gemlamps = {
	{"ruby_lamp","Ruby Lamp",placeRubyLamp},
	{"amethyst_lamp","Amethyst Lamp", placeAmethystLamp},
	{"emerald_lamp","Emerald Lamp", placeEmeraldLamp},
	{"sapphire_lamp","Sapphire Lamp", placeSapphireLamp},
	{"topaz_lamp","Topaz Lamp", placeTopazLamp},
	{"diamond_lamp","Diamond Lamp", placeDiamondLamp}
}


for i in ipairs(gemlamps) do
	local lamp = gemlamps[i][1]
	local lamp_name = gemlamps[i][2]
	local l_func = gemlamps[i][3]

	minetest.register_node("gold_and_gem:"..lamp, {
	description = lamp_name,
	drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.125, -0.5, -0.25, 0.125, -0.4375, 0.25}, -- NodeBox1
				{-0.25, -0.5, -0.125, 0.25, -0.4375, 0.125}, -- NodeBox2
				{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875}, -- NodeBox3
				{-0.125, -0.4375, -0.1875, 0.125, -0.375, 0.1875}, -- NodeBox4
				{-0.1875, -0.4375, -0.125, 0.1875, -0.375, 0.125}, -- NodeBox5
				{-0.0625, -0.375, -0.0625, 0.0625, -0.0625, 0.0625}, -- NodeBox6
				{-0.125, -0.0625, -0.125, 0.125, 0.0625, 0.125}, -- NodeBox7
				{-0.25, 0.0625, -0.25, 0.25, 0.25, 0.25}, -- NodeBox8
				{-0.125, 0.0625, -0.3125, 0.125, 0.25, 0.3125}, -- NodeBox9
				{-0.3125, 0.0625, -0.125, 0.3125, 0.25, 0.125}, -- NodeBox10
				{-0.125, 0.25, 0.25, 0.125, 0.5, 0.375}, -- NodeBox11
				{-0.375, 0.25, -0.125, -0.25, 0.5, 0.125}, -- NodeBox12
				{-0.125, 0.25, -0.375, 0.125, 0.5, -0.25}, -- NodeBox13
				{0.25, 0.25, -0.125, 0.375, 0.5, 0.125}, -- NodeBox14
				{0.125, 0.25, -0.3125, 0.25, 0.5, -0.1875}, -- NodeBox15
				{0.1875, 0.25, -0.25, 0.3125, 0.5, -0.125}, -- NodeBox16
				{-0.25, 0.25, -0.3125, -0.125, 0.5, -0.1875}, -- NodeBox17
				{-0.3125, 0.25, -0.25, -0.1875, 0.5, -0.125}, -- NodeBox18
				{-0.3125, 0.25, 0.125, -0.1875, 0.5, 0.25}, -- NodeBox19
				{-0.25, 0.25, 0.1875, -0.125, 0.5, 0.3125}, -- NodeBox20
				{0.1875, 0.25, 0.125, 0.3125, 0.5, 0.25}, -- NodeBox21
				{0.125, 0.25, 0.1875, 0.25, 0.5, 0.3125}, -- NodeBox22
			}
		},

	selection_box = {
				type = "fixed",
				fixed = { -0.4, -0.5, -0.4, 0.4, 0.5, 0.4 },
			},
	tiles = {
	{name="goldgem_"..lamp.."_top_anim.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}},
	{name="goldgem_"..lamp.."_bottom_anim.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}},
	{name="goldgem_"..lamp.."_side_anim.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},

	paramtype = "light",
	on_place = l_func,
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 12,
	groups = {choppy=2,dig_immediate=3},
	--legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	})

	minetest.register_node("gold_and_gem:"..lamp.."_wall", {
	description = lamp_name.." Wall",
	drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.0625, -0.1875, -0.0625, 0.0625, -0.0625, 0.0625}, -- NodeBox6
				{-0.125, -0.0625, -0.125, 0.125, 0.0625, 0.125}, -- NodeBox7
				{-0.25, 0.0625, -0.25, 0.25, 0.25, 0.25}, -- NodeBox8
				{-0.125, 0.0625, -0.3125, 0.125, 0.25, 0.3125}, -- NodeBox9
				{-0.3125, 0.0625, -0.125, 0.3125, 0.25, 0.125}, -- NodeBox10
				{-0.125, 0.25, 0.25, 0.125, 0.5, 0.375}, -- NodeBox11
				{-0.375, 0.25, -0.125, -0.25, 0.5, 0.125}, -- NodeBox12
				{-0.125, 0.25, -0.375, 0.125, 0.5, -0.25}, -- NodeBox13
				{0.25, 0.25, -0.125, 0.375, 0.5, 0.125}, -- NodeBox14
				{0.125, 0.25, -0.3125, 0.25, 0.5, -0.1875}, -- NodeBox15
				{0.1875, 0.25, -0.25, 0.3125, 0.5, -0.125}, -- NodeBox16
				{-0.25, 0.25, -0.3125, -0.125, 0.5, -0.1875}, -- NodeBox17
				{-0.3125, 0.25, -0.25, -0.1875, 0.5, -0.125}, -- NodeBox18
				{-0.3125, 0.25, 0.125, -0.1875, 0.5, 0.25}, -- NodeBox19
				{-0.25, 0.25, 0.1875, -0.125, 0.5, 0.3125}, -- NodeBox20
				{0.1875, 0.25, 0.125, 0.3125, 0.5, 0.25}, -- NodeBox21
				{0.125, 0.25, 0.1875, 0.25, 0.5, 0.3125}, -- NodeBox22
				{-0.0625, -0.25, -0.125, 0.0625, -0.125, 0}, -- NodeBox24
				{-0.0625, -0.3125, -0.25, 0.0625, -0.1875, -0.0625}, -- NodeBox25
				{-0.0625, -0.375, -0.375, 0.0625, -0.25, -0.1875}, -- NodeBox26
				{-0.125, -0.4375, -0.5, 0.125, -0.1875, -0.375}, -- NodeBox27
				{-0.125, -0.5, -0.5, 0.125, -0.125, -0.4375}, -- NodeBox28
				{-0.1875, -0.4375, -0.5, 0.1875, -0.1875, -0.4375}, -- NodeBox29
			}
		},

	selection_box = {
				type = "fixed",
				fixed = { -0.4, -0.5, -0.4, 0.4, 0.5, 0.4 },
			},
	tiles = {
	{name="goldgem_"..lamp.."_top_anim.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}},
	{name="goldgem_"..lamp.."_wall_bottom_anim.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}},

	{name="goldgem_"..lamp.."_side_anim.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},
	paramtype = "light",
	on_place = l_func,
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 12,
	groups = {choppy=2,dig_immediate=3, not_in_creative_inventory=1},
	--legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	drop ="gold_and_gem:"..lamp
	})
end


minetest.register_node("gold_and_gem:pillar", {
	tiles = {
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png"
	},
	description = "Marble Pillar",
	drawtype = "nodebox",
	paramtype = "light",

	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.125, 0.375, 0.5, 0.125}, -- pillar_1
			{-0.125, -0.5, -0.375, 0.125, 0.5, 0.375}, -- pillar_2
			{-0.25, -0.5, -0.3125, 0.25, 0.5, 0.3125}, -- pillar_3
			{-0.3125, -0.5, -0.25, 0.3125, 0.5, 0.25}, -- pillar_4
		}
	}

})

minetest.register_node("gold_and_gem:pillar_ground", {
	tiles = {
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png"
	},
	description = "Marble Pillar Ground",
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.125, 0.375, 0.5, 0.125}, -- pillar_1
			{-0.125, -0.5, -0.375, 0.125, 0.5, 0.375}, -- pillar_2
			{-0.25, -0.5, -0.3125, 0.25, 0.5, 0.3125}, -- pillar_3
			{-0.3125, -0.5, -0.25, 0.3125, 0.5, 0.25}, -- pillar_4
			{-0.4375, -0.4375, -0.4375, 0.4375, -0.375, 0.4375}, -- ground_1
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- ground_2
		}
	}

})

minetest.register_node("gold_and_gem:pillar_top", {
	tiles = {
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png",
		"technic_marble.png"
	},
	description = "Marble Pillar Top",
	drawtype = "nodebox",
	paramtype = "light",
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.125, 0.375, 0.5, 0.125}, -- pillar_1
			{-0.125, -0.5, -0.375, 0.125, 0.5, 0.375}, -- pillar_2
			{-0.25, -0.5, -0.3125, 0.25, 0.5, 0.3125}, -- pillar_3
			{-0.3125, -0.5, -0.25, 0.3125, 0.5, 0.25}, -- pillar_4
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5}, -- top_1
			{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, 0.4375}, -- top_2
		}
	}



})

local mats = {
	{"gold","Gold"},
	{"silver","Silver"}
}


for i in ipairs(mats) do
	local mat = mats[i][1]
	local name = mats[i][2]
	minetest.register_node("gold_and_gem:pillar_"..mat, {
		tiles = {
			"technic_marble.png",
			"technic_marble.png",
			"goldgem_pillar_front_"..mat..".png",
			"goldgem_pillar_back_"..mat..".png",
			"goldgem_pillar_right_"..mat..".png",
			"goldgem_pillar_left_"..mat..".png"
			},
		description = "Marble Pillar "..name,
		drawtype = "nodebox",
		paramtype = "light",
		is_ground_content = true,
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.375, -0.5, -0.125, 0.375, 0.5, 0.125}, -- pillar_1
				{-0.125, -0.5, -0.375, 0.125, 0.5, 0.375}, -- pillar_2
                {-0.25, -0.5, -0.3125, 0.25, 0.5, 0.3125}, -- pillar_3
				{-0.3125, -0.5, -0.25, 0.3125, 0.5, 0.25}, --- pillar_4
			}
		}

	})

	minetest.register_node("gold_and_gem:pillar_ground_"..mat, {
		tiles = {
			"technic_marble.png",
			"technic_marble.png",
			"goldgem_pillar_front_"..mat.."_bottom.png",
			"goldgem_pillar_back_"..mat.."_bottom.png",
			"goldgem_pillar_right_"..mat.."_bottom.png",
			"goldgem_pillar_left_"..mat..".png"
		},
		description = "Marble Pillar Ground "..name,
		drawtype = "nodebox",
		paramtype = "light",
		is_ground_content = true,
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.375, -0.5, -0.125, 0.375, 0.5, 0.125}, -- pillar_1
				{-0.125, -0.5, -0.375, 0.125, 0.5, 0.375}, -- pillar_2
				{-0.25, -0.5, -0.3125, 0.25, 0.5, 0.3125}, -- pillar_3
				{-0.3125, -0.5, -0.25, 0.3125, 0.5, 0.25}, -- pillar_4
				{-0.4375, -0.4375, -0.4375, 0.4375, -0.375, 0.4375}, -- ground_1
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- ground_2
			}
		}

	})

	minetest.register_node("gold_and_gem:pillar_top_"..mat, {
		tiles = {
			"technic_marble.png",
			"technic_marble.png",
			"goldgem_pillar_front_"..mat.."_top.png",
			"goldgem_pillar_back_"..mat..".png",
			"goldgem_pillar_right_"..mat.."_top.png",
			"goldgem_pillar_left_"..mat.."_top.png"
		},
		description = "Marble Pillar Top "..name,
		drawtype = "nodebox",
		paramtype = "light",
		is_ground_content = true,
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.375, -0.5, -0.125, 0.375, 0.5, 0.125}, -- pillar_1
				{-0.125, -0.5, -0.375, 0.125, 0.5, 0.375}, -- pillar_2
				{-0.25, -0.5, -0.3125, 0.25, 0.5, 0.3125}, -- pillar_3
				{-0.3125, -0.5, -0.25, 0.3125, 0.5, 0.25}, -- pillar_4
				{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5}, -- top_1
				{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, 0.4375}, -- top_2
			}
		}

	})

end


local checkerblocks = {
	{"gold","Gold", {cracky=2, level=2, oddly_breakable_by_hand=2}},
	{"mithril","Mithril", {cracky=2, level=3, oddly_breakable_by_hand=2}},
	{"diamond","Diamond", {cracky=1, level=3, oddly_breakable_by_hand=2}},
	{"arol","Arol", {cracky=2, level=1, oddly_breakable_by_hand=1}},
	{"kalite","Kalite", {cracky=3}},
	{"granite","Granite", {cracky=1, level=3, oddly_breakable_by_hand=2}}
}


for i in ipairs(checkerblocks) do


	local mat = checkerblocks[i][1]
	local name = checkerblocks[i][2]
	local node_groups = checkerblocks[i][3]

	minetest.register_node("gold_and_gem:checkerblock_"..mat, {
		tiles = {"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR180"},
		description = "Marble-"..name.." Checkerblock",
		paramtype = "light",
		is_ground_content = true,
		groups = node_groups,
		sounds = default.node_sound_stone_defaults()

	})

	minetest.register_node("gold_and_gem:checkerblock_mirrored_"..mat, {
		tiles = {"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR90"},
		description = "Marble-"..name.." Checkerblock",
		paramtype = "light",
		is_ground_content = true,
		groups = node_groups,
		sounds = default.node_sound_stone_defaults()

	})



    if minetest.get_modpath("moreblocks") then
		register_stair_slab_panel_micro("gold_and_gem", "checkerblock_"..mat, "gold_and_gem:checkerblock_"..mat,
		node_groups,
		{"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR180"},
		"Marble-"..name.." Checkerblock",
		"Marble-"..name.." Checkerblock",
		0)
		register_stair_slab_panel_micro("gold_and_gem", "checkerblock_mirrored_"..mat, "gold_and_gem:checkerblock_mirrored_"..mat,
		node_groups,
		{"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR90",
		"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR180",
		"goldgem_checker_block_"..mat..".png^[transformR90"},
		"Marble-"..name.." Checkerblock",
		"Marble-"..name.." Checkerblock",
		0)

    table.insert(circular_saw.known_stairs, "gold_and_gem:checkerblock_"..mat)
    table.insert(circular_saw.known_stairs, "gold_and_gem:checkerblock_mirrored_"..mat)

    end
end


local gsq_poles = {
{"gold", "Gold-Pole", {cracky=2, level=2, oddly_breakable_by_hand=2}},
{"silver", "Silver-Pole", {cracky=2, level=2, oddly_breakable_by_hand=2}},
{"quartz", "Quartz-Pole", {cracky=2, level=2}}
}

for i in ipairs(gsq_poles) do

    local mat = gsq_poles[i][1]
	local name = gsq_poles[i][2]
	local node_groups = gsq_poles[i][3]

	minetest.register_node("gold_and_gem:"..mat.."pole", {
        drawtype = "nodebox",
        node_box = {
            type = "fixed",
            fixed = {
			{-0.06, -0.5, -0.1, 0.06, 0.5, 0.1}, -- NodeBox1
			{-0.1, -0.5, -0.06, 0.1, 0.5, 0.06}, -- NodeBox2
            }
        },
        tiles = {"goldgem_"..mat..".png"},
		description = name,
		paramtype = "light",
		is_ground_content = true,
		groups = node_groups,
		sounds = default.node_sound_stone_defaults()

	})

	minetest.register_node("gold_and_gem:"..mat.."pole_bottom", {
        drawtype = "nodebox",
        node_box = {
            type = "fixed",
            fixed = {
			{-0.06, -0.5, -0.1, 0.06, 0.5, 0.1}, -- NodeBox1
			{-0.1, -0.5, -0.06, 0.1, 0.5, 0.06}, -- NodeBox2
			{-0.1, -0.5, -0.15, 0.1, -0.4375, 0.15}, -- NodeBox3
			{-0.15, -0.5, -0.1, 0.15, -0.4375, 0.1}, -- NodeBox4
            }
        },
        tiles = {"goldgem_"..mat..".png"},
		description = name.." (bottom)",
		paramtype = "light",
		is_ground_content = true,
		groups = node_groups,
		sounds = default.node_sound_stone_defaults()

	})

	minetest.register_node("gold_and_gem:"..mat.."pole_top", {
        drawtype = "nodebox",
        node_box = {
            type = "fixed",
            fixed = {
			{-0.06, -0.5, -0.1, 0.06, 0.5, 0.1}, -- NodeBox1
			{-0.1, -0.5, -0.06, 0.1, 0.5, 0.06}, -- NodeBox2
			{-0.1, 0.4375, -0.15, 0.1, 0.5, 0.15}, -- NodeBox3
			{-0.15, 0.4375, -0.1, 0.15, 0.5, 0.1}, -- NodeBox4
            }
        },
        tiles = {"goldgem_"..mat..".png"},
		description = name.." (top)",
		paramtype = "light",
		is_ground_content = true,
		groups = node_groups,
		sounds = default.node_sound_stone_defaults()

	})

	minetest.register_node("gold_and_gem:"..mat.."pole_both", {
        drawtype = "nodebox",
        node_box = {
            type = "fixed",
            fixed = {
			{-0.06, -0.5, -0.1, 0.06, 0.5, 0.1}, -- NodeBox1
			{-0.1, -0.5, -0.06, 0.1, 0.5, 0.06}, -- NodeBox2
			{-0.1, 0.4375, -0.15, 0.1, 0.5, 0.15}, -- NodeBox3
			{-0.15, 0.4375, -0.1, 0.15, 0.5, 0.1}, -- NodeBox4
            {-0.1, -0.5, -0.15, 0.1, -0.4375, 0.15}, -- NodeBox3
			{-0.15, -0.5, -0.1, 0.15, -0.4375, 0.1}, -- NodeBox4
            }
        },
        tiles = {"goldgem_"..mat..".png"},
		description = name.." (both)",
		paramtype = "light",
		is_ground_content = true,
		groups = node_groups,
		sounds = default.node_sound_stone_defaults()

	})

end

minetest.register_node("gold_and_gem:fence_quartz", {
	description = S("Quartz Fence/railing"),
	drawtype = "fencelike",
	tiles = {"goldgem_quartz.png"},
	inventory_image = "goldgem_fence_quartz.png",
	wield_image = "goldgem_fence_quartz.png",
	paramtype = "light",
	selection_box = {
	        type = "fixed",
	        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:fence_gold", {
	description = S("Gold Fence/railing"),
	drawtype = "fencelike",
	tiles = {"goldgem_gold.png"},
	inventory_image = "goldgem_fence_gold.png",
	wield_image = "goldgem_fence_gold.png",
	paramtype = "light",
	selection_box = {
	        type = "fixed",
	        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:fence_silver_mithril_ending", {
	description = S("Silver/Mithril Fence/railing (ending)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}, -- NodeBox1
            {-0.0625, -0.1875, -0.5, 0.0625, -0.0625, -0.125}, -- NodeBox4
			{-0.0625, 0.1875, -0.5, 0.0625, 0.3125, -0.125}, -- NodeBox5 -- NodeBox3
		}
	},
	tiles = {
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
		},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
	        type = "fixed",
	        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:fence_silver_mithril_edge", {
	description = S("Silver/Mithril Fence/railing (edge)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}, -- NodeBox1
            		{-0.0625, -0.1875, -0.5, 0.0625, -0.0625, -0.125}, -- NodeBox4
			{-0.0625, 0.1875, -0.5, 0.0625, 0.3125, -0.125}, -- NodeBox5 -- NodeBox3
			{-0.0625, -0.1875, -0.0625, 0.5, -0.0625, 0.0625}, -- NodeBox2
			{-0.0625, 0.1875, -0.0625, 0.5, 0.3125, 0.0625}, -- NodeBox3
		}
	},
	tiles = {
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
		},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
	        type = "fixed",
	        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:fence_silver_mithril", {
	description = S("Silver/Mithril Fence/railing"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}, -- NodeBox1
			{-0.5, -0.1875, -0.0625, 0.5, -0.0625, 0.0625}, -- NodeBox2
			{-0.5, 0.1875, -0.0625, 0.5, 0.3125, 0.0625}, -- NodeBox3
		}
	},
	tiles = {
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
		},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
	        type = "fixed",
	        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:fence_silver_mithril_t", {
	description = S("Silver/Mithril Fence/railing (T-part)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}, -- NodeBox1
			{-0.5, -0.1875, -0.0625, 0.5, -0.0625, 0.0625}, -- NodeBox2
			{-0.5, 0.1875, -0.0625, 0.5, 0.3125, 0.0625}, -- NodeBox3
			{-0.0625, -0.1875, -0.5, 0.0625, -0.0625, -0.125}, -- NodeBox4
			{-0.0625, 0.1875, -0.5, 0.0625, 0.3125, -0.125}, -- NodeBox5
		}
	},
	tiles = {
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
		},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
	        type = "fixed",
	        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:fence_silver_mithril_crossing", {
	description = S("Silver/Mithril Fence/railing (crossing)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}, -- NodeBox1
			{-0.5, -0.1875, -0.0625, 0.5, -0.0625, 0.0625}, -- NodeBox2
			{-0.5, 0.1875, -0.0625, 0.5, 0.3125, 0.0625}, -- NodeBox3
			{-0.0625, -0.1875, -0.5, 0.0625, -0.0625, 0.5}, -- NodeBox4
			{-0.0625, 0.1875, -0.5, 0.0625, 0.3125, 0.5}, -- NodeBox5
		}
	},
	tiles = {
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
		},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
	        type = "fixed",
	        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:silver_fence_pole", {
	description = S("SilverFence Pole"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}, -- NodeBox1
		}
	},
	tiles = {
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril_top.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
			"goldgem_silver_mithril.png",
		},
	paramtype = "light",
	selection_box = {
	        type = "fixed",
	        fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:silver_wire_fence", {
	description = S("Silverwire Fence"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, -0.0625, 0.5}, -- NodeBox1
			{-0.125, -0.0625, 0.4, 0.1875, 0.0625, 0.475}, -- NodeBox2
			{0.125, -0.0625, 0.4, 0.5, 0.125, 0.475}, -- NodeBox3
			{-0.5, -0.0625, 0.4, -0.125, 0.125, 0.475}, -- NodeBox4
			{-0.5, 0.25, 0.4375, -0.3125, 0.375, 0.5}, -- NodeBox5
			{-0.375, 0.1875, 0.4375, -0.125, 0.3125, 0.5}, -- NodeBox6
			{-0.1875, 0.125, 0.4375, 0.1875, 0.25, 0.5}, -- NodeBox7
			{0.125, 0.1875, 0.4375, 0.375, 0.3125, 0.5}, -- NodeBox8
			{0.3125, 0.25, 0.4375, 0.5, 0.375, 0.5}, -- NodeBox9
			{-0.1875, 0.25, 0.375, 0.1875, 0.375, 0.4375}, -- NodeBox10
			{0.125, 0.1875, 0.375, 0.375, 0.3125, 0.4375}, -- NodeBox11
			{0.3125, 0.125, 0.375, 0.5, 0.25, 0.4375}, -- NodeBox12
			{-0.375, 0.1875, 0.375, -0.125, 0.3125, 0.4375}, -- NodeBox13
			{-0.5, 0.125, 0.375, -0.3125, 0.25, 0.4375}
		}
	},
		tiles = {
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 }
        },
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:silver_wire_fence_right_end", {
	description = S("Silverwire Fence (right end)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, -0.0625, 0.5}, -- NodeBox1
			{-0.125, -0.0625, 0.4, 0.1875, 0.0625, 0.475}, -- NodeBox2
			{0.125, -0.0625, 0.4, 0.5, 0.125, 0.475}, -- NodeBox3
			{-0.5, -0.0625, 0.4, -0.125, 0.125, 0.475}, -- NodeBox4
			{-0.5, 0.25, 0.4375, -0.3125, 0.375, 0.5}, -- NodeBox5
			{-0.375, 0.1875, 0.4375, -0.125, 0.3125, 0.5}, -- NodeBox6
			{-0.1875, 0.125, 0.4375, 0.1875, 0.25, 0.5}, -- NodeBox7
			{0.125, 0.1875, 0.4375, 0.375, 0.3125, 0.5}, -- NodeBox8
			{-0.1875, 0.25, 0.375, 0.1875, 0.375, 0.4375}, -- NodeBox10
			{0.125, 0.1875, 0.375, 0.375, 0.3125, 0.4375}, -- NodeBox11
			{-0.375, 0.1875, 0.375, -0.125, 0.3125, 0.4375}, -- NodeBox13
			{-0.5, 0.125, 0.375, -0.3125, 0.25, 0.4375}, -- NodeBox14
			{0.3125, -0.5, 0.3125, 0.5, 0.4375, 0.5}, -- NodeBox15
			{0.375, -0.5, 0.375, 0.4375, 0.5, 0.4375}
		}
	},
		tiles = {
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 }
        },
	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:silver_wire_fence_edge", {
	description = S("Silverwire Fence (edge)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, -0.0625, 0.5}, -- NodeBox1
			{-0.125, -0.0625, 0.4, 0.1875, 0.0625, 0.475}, -- NodeBox2
			{0.125, -0.0625, 0.4, 0.5, 0.125, 0.475}, -- NodeBox3
			{-0.5, -0.0625, 0.4, -0.125, 0.125, 0.475}, -- NodeBox4
			{-0.5, 0.25, 0.4375, -0.3125, 0.375, 0.5}, -- NodeBox5_edge_x
			{-0.375, 0.1875, 0.4375, -0.125, 0.3125, 0.5}, -- NodeBox6
			{-0.1875, 0.125, 0.4375, 0.1875, 0.25, 0.5}, -- NodeBox7
			{0.125, 0.1875, 0.4375, 0.375, 0.3125, 0.5}, -- NodeBox8
			{-0.1875, 0.25, 0.375, 0.1875, 0.375, 0.4375}, -- NodeBox10
			{0.125, 0.1875, 0.375, 0.375, 0.3125, 0.4375}, -- NodeBox11
			{-0.375, 0.1875, 0.375, -0.125, 0.3125, 0.4375}, -- NodeBox13
			{-0.5, 0.125, 0.375, -0.3125, 0.25, 0.4375}, -- NodeBox14
			{0.3125, -0.5, 0.3125, 0.5, 0.4375, 0.5}, -- NodeBox15
			{0.375, -0.5, 0.375, 0.4375, 0.5, 0.4375}, -- NodeBox16
			{0.375, -0.5, -0.5, 0.5, -0.0625, 0.5}, -- NodeBox17
			{0.4, -0.5, 0.125, 0.475, 0.125, 0.5}, -- NodeBox18
			{0.4, -0.5, -0.125, 0.475, 0.0625, 0.125}, -- NodeBox19
			{0.4, -0.5, -0.5, 0.475, 0.125, -0.125}, -- NodeBox20
			{0.375, 0.125, -0.5, 0.4375, 0.25, -0.3125}, -- NodeBox21
			{0.375, 0.1875, -0.375, 0.4375, 0.3125, -0.125}, -- NodeBox22
			{0.375, 0.25, -0.1875, 0.4375, 0.375, 0.1875}, -- NodeBox23
			{0.375, 0.1875, 0.125, 0.4375, 0.3125, 0.375}, -- NodeBox24
			{0.4375, 0.25, -0.5, 0.5, 0.375, -0.3125}, -- NodeBox25
			{0.4375, 0.1875, -0.375, 0.5, 0.3125, -0.125}, -- NodeBox27
			{0.4375, 0.1875, 0.125, 0.5, 0.3125, 0.375}, -- NodeBox28
			{0.4375, 0.125, -0.1875, 0.5, 0.25, 0.1875}
		}
	},
		tiles = {
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
	type = "fixed",
		fixed = {
			{ -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 },
			{ 0.4, -0.5, -0.5, 0.5, 0.5, 0.4 }
		}
	},

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})


minetest.register_node("gold_and_gem:silver_wire_fence_left_end", {
	description = S("Silverwire Fence (left end)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, -0.0625, 0.5}, -- NodeBox1
			{-0.125, -0.0625, 0.4, 0.1875, 0.0625, 0.475}, -- NodeBox2
			{0.125, -0.0625, 0.4, 0.5, 0.125, 0.475}, -- NodeBox3
			{-0.5, -0.0625, 0.4, -0.125, 0.125, 0.475}, -- NodeBox4
			{-0.375, 0.1875, 0.4375, -0.125, 0.3125, 0.5}, -- NodeBox6
			{-0.1875, 0.125, 0.4375, 0.1875, 0.25, 0.5}, -- NodeBox7
			{0.125, 0.1875, 0.4375, 0.375, 0.3125, 0.5}, -- NodeBox8
			{0.3125, 0.25, 0.4375, 0.5, 0.375, 0.5}, -- NodeBox9_no_edge
			{-0.1875, 0.25, 0.375, 0.1875, 0.375, 0.4375}, -- NodeBox10
			{0.125, 0.1875, 0.375, 0.375, 0.3125, 0.4375}, -- NodeBox11
			{0.3125, 0.125, 0.375, 0.5, 0.25, 0.4375}, -- NodeBox12
			{-0.375, 0.1875, 0.375, -0.125, 0.3125, 0.4375}, -- NodeBox13
			{-0.5, -0.5, 0.3125, -0.3125, 0.4375, 0.5}, -- NodeBox15
			{-0.4375, -0.5, 0.375, -0.375, 0.5, 0.4375}
		}
	},
		tiles = {
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 }
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:silver_wire_fence_post", {
	description = S("Silverwire Fencepost"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5625, 0.3125, -0.3125, 0.4375, 0.5}, -- NodeBox15
			{-0.4375, -0.5, 0.375, -0.375, 0.5, 0.4375}
		}
	},
		tiles = {
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png",
		"goldgem_silver.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = {-0.5, -0.5, 0.3125, -0.3125, 0.5, 0.5}
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:gold_mithril_fence_1", {
	description = S("Gold Fence with Mithril (right side)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.1875, 0.1875, 0.375, 0.5, 0.3125, 0.5}, -- NodeBox1
			{0, 0.125, 0.375, 0.3125, 0.25, 0.5}, -- NodeBox2
			{-0.125, 0.0625, 0.375, 0.125, 0.1875, 0.5}, -- NodeBox3
			{-0.375, 0, 0.375, -0.0625, 0.125, 0.5}, -- NodeBox4
			{-0.5, -0.0625, 0.375, -0.25, 0.0625, 0.5}, -- NodeBox5
			{-0.5, -0.5, 0.375, 0.5, -0.25, 0.5}, -- NodeBox6
			{0.375, -0.5, 0.375, 0.5, 0.4375, 0.5}, -- NodeBox7
			{-0.0625, -0.5, 0.375, 0.0625, 0.125, 0.5}, -- NodeBox8
			{-0.5, -0.5, 0.375, -0.375, 0, 0.5}, -- NodeBox9
			{-0.5, -0.125, 0.375, 0.5, -0.0625, 0.5}, -- NodeBox10
			{0.4, 0.4375, 0.4, 0.475, 0.5, 0.475}
		}
	},
		tiles = {
		"goldgem_gold_mithril_top.png",
		"goldgem_gold.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 }
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:gold_mithril_fence_2", {
	description = S("Gold Fence"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.1875, 0.1875, 0.375, 0.5, 0.3125, 0.5}, -- NodeBox1
			{0, 0.125, 0.375, 0.3125, 0.25, 0.5}, -- NodeBox2
			{-0.125, 0.0625, 0.375, 0.125, 0.1875, 0.5}, -- NodeBox3
			{-0.375, 0, 0.375, -0.0625, 0.125, 0.5}, -- NodeBox4
			{-0.5, -0.0625, 0.375, -0.25, 0.0625, 0.5}, -- NodeBox5
			{-0.5, -0.5, 0.375, 0.5, -0.25, 0.5}, -- NodeBox6
			{0.375, -0.5, 0.375, 0.5, 0.3125, 0.5}, -- NodeBox7
			{-0.0625, -0.5, 0.375, 0.0625, 0.125, 0.5}, -- NodeBox8
			{-0.5, -0.5, 0.375, -0.375, 0, 0.5}, -- NodeBox9
			{-0.5, -0.125, 0.375, 0.5, -0.0625, 0.5}
		}
	},
		tiles = {
		"goldgem_gold.png",
		"goldgem_gold.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 }
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:gold_mithril_fence_3", {
	description = S("Gold Fence Edge with Mithril"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.1875, 0.1875, 0.375, 0.5, 0.3125, 0.5}, -- NodeBox1
			{0, 0.125, 0.375, 0.3125, 0.25, 0.5}, -- NodeBox2
			{-0.125, 0.0625, 0.375, 0.125, 0.1875, 0.5}, -- NodeBox3
			{-0.375, 0, 0.375, -0.0625, 0.125, 0.5}, -- NodeBox4
			{-0.5, -0.0625, 0.375, -0.25, 0.0625, 0.5}, -- NodeBox5
			{-0.5, -0.5, 0.375, 0.5, -0.25, 0.5}, -- NodeBox6
			{0.375, -0.5, 0.375, 0.5, 0.3125, 0.5}, -- NodeBox7
			{-0.0625, -0.5, 0.375, 0.0625, 0.125, 0.5}, -- NodeBox8
			{-0.5, -0.5, 0.375, -0.375, 0, 0.5}, -- NodeBox9
			{-0.5, -0.125, 0.375, 0.5, -0.0625, 0.5}, -- NodeBox10
			{0.3125, -0.5, 0.3125, 0.5, 0.4375, 0.5}, -- NodeBox12
			{0.375, -0.5, 0.375, 0.4375, 0.5, 0.4375}, -- NodeBox13
			{0.375, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox14
			{0.375, -0.125, -0.5, 0.5, -0.0625, 0.5}, -- NodeBox15
			{0.375, -0.5, -0.0625, 0.5, 0.0625, 0.0625}, -- NodeBox16
			{0.375, 0.0625, -0.125, 0.5, 0.1875, 0.125}, -- NodeBox17
			{0.375, -0.5, -0.5, 0.5, 0, -0.375}, -- NodeBox18
			{0.375, 0.1875, 0.1875, 0.5, 0.3125, 0.5}, -- NodeBox19
			{0.375, 0.125, 0, 0.5, 0.25, 0.3125}, -- NodeBox20
			{0.375, 0, -0.375, 0.5, 0.125, 0}, -- NodeBox21
			{0.375, -0.0625, -0.5, 0.5, 0.0625, -0.25}
		}
	},
		tiles = {
		"goldgem_gold_mithril_top2.png",
		"goldgem_gold.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
	type = "fixed",
		fixed = {
			{ -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 },
			{ 0.4, -0.5, -0.5, 0.5, 0.5, 0.4 }
		}
	},

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:gold_mithril_fencepole", {
	description = S("Gold Fencepole with Mithril"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.3125, -0.5, 0.3125, 0.5, 0.4375, 0.5}, -- NodeBox12
			{0.375, -0.5, 0.375, 0.4375, 0.5, 0.4375}
		}
	},
		tiles = {
		"goldgem_gold_mithril_top2.png",
		"goldgem_gold.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = {0.3125, -0.5, 0.3125, 0.5, 0.5, 0.5}
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:gold_mithril_fence_4", {
	description = S("Gold Fence with Mithril (left side)"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.1875, 0.375, -0.1875, 0.3125, 0.5}, -- NodeBox1
			{-0.3125, 0.125, 0.375, 0, 0.25, 0.5}, -- NodeBox2
			{-0.125, 0.0625, 0.375, 0.125, 0.1875, 0.5}, -- NodeBox3
			{0.0625, 0, 0.375, 0.375, 0.125, 0.5}, -- NodeBox4
			{0.25, -0.0625, 0.375, 0.5, 0.0625, 0.5}, -- NodeBox5
			{-0.5, -0.5, 0.375, 0.5, -0.25, 0.5}, -- NodeBox6
			{0.375, -0.5, 0.375, 0.5, 0, 0.5}, -- NodeBox7
			{-0.0625, -0.5, 0.375, 0.0625, 0.125, 0.5}, -- NodeBox8
			{-0.5, -0.5, 0.375, -0.375, 0.4375, 0.5}, -- NodeBox9
			{-0.5, -0.125, 0.375, 0.5, -0.0625, 0.5}, -- NodeBox10
			{-0.475, 0.4375, 0.4, -0.4, 0.5, 0.475}
		}
	},
		tiles = {
		"goldgem_gold_mithril_top.png^[transformR90",
		"goldgem_gold.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 }
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:gold_mithril_fence_5", {
	description = S("Gold Fence"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.1875, 0.375, -0.1875, 0.3125, 0.5}, -- NodeBox1
			{-0.3125, 0.125, 0.375, 0, 0.25, 0.5}, -- NodeBox2
			{-0.125, 0.0625, 0.375, 0.125, 0.1875, 0.5}, -- NodeBox3
			{0.0625, 0, 0.375, 0.375, 0.125, 0.5}, -- NodeBox4
			{0.25, -0.0625, 0.375, 0.5, 0.0625, 0.5}, -- NodeBox5
			{-0.5, -0.5, 0.375, 0.5, -0.25, 0.5}, -- NodeBox6
			{0.375, -0.5, 0.375, 0.5, 0, 0.5}, -- NodeBox7
			{-0.0625, -0.5, 0.375, 0.0625, 0.125, 0.5}, -- NodeBox8
			{-0.5, -0.5, 0.375, -0.375, 0.1875, 0.5}, -- NodeBox9
			{-0.5, -0.125, 0.375, 0.5, -0.0625, 0.5}
		}
	},
		tiles = {
		"goldgem_gold.png",
		"goldgem_gold.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, 0.4, 0.5, 0.5, 0.5 }
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:gold_mithril_fence_6", {
	description = S("Gold Fence"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.0625, 0.375, -0.25, 0.0625, 0.5}, -- NodeBox1
			{-0.3125, 0, 0.375, 0, 0.125, 0.5}, -- NodeBox2
			{-0.125, 0.0625, 0.375, 0.125, 0.1875, 0.5}, -- NodeBox3
			{0.0625, 0, 0.375, 0.375, 0.125, 0.5}, -- NodeBox4
			{0.25, -0.0625, 0.375, 0.5, 0.0625, 0.5}, -- NodeBox5
			{-0.5, -0.5, 0.375, 0.5, -0.25, 0.5}, -- NodeBox6
			{0.375, -0.5, 0.375, 0.5, 0, 0.5}, -- NodeBox7
			{-0.0625, -0.5, 0.375, 0.0625, 0.125, 0.5}, -- NodeBox8
			{-0.5, -0.5, 0.375, -0.375, 0, 0.5}, -- NodeBox9
			{-0.5, -0.125, 0.375, 0.5, -0.0625, 0.5}
		}
	},
		tiles = {
		"goldgem_gold.png",
		"goldgem_gold.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png",
		"goldgem_gold_mithril.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, 0.4, 0.5, 0.35, 0.5 }
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:gold_mithril_fencepole_2", {
	description = S("Gold Fencepole with Mithril"),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.6875, 0.375, 0.5, 0.25, 0.5}, -- NodeBox7
			{0.4, 0.25, 0.4, 0.475, 0.3125, 0.475}, -- NodeBox11
		}
	},
		tiles = {
		"goldgem_gold_mithril_top.png",
		"goldgem_gold.png",
		"goldgem_gold_mithril2.png",
		"goldgem_gold_mithril2.png",
		"goldgem_gold_mithril2.png",
		"goldgem_gold_mithril2.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",

	selection_box = {
                type = "fixed",
                fixed = {0.375, -0.5, 0.375, 0.5, 0.3, 0.5}
        },

	groups = {cracky=2, level=2, oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
	walkable = true,
})

minetest.register_node("gold_and_gem:mese_crystal_block", {
	description = "Mese Crystal Block",
	tiles = {"goldgem_mese_crystal_block.png"},
	is_ground_content = false,
	groups = {bendy=3,cracky=2,level=1},
	sounds = default.node_sound_stone_defaults(),
})

if minetest.get_modpath("moreblocks") then
		register_stair_slab_panel_micro("gold_and_gem", "mese_crystal_block", "gold_and_gem:mese_crystal_block",
		{bendy=3,cracky=2,level=1},
		{"goldgem_mese_crystal_block.png"},
		"Mese Crystal Block",
		"Mese Crystal Block",
		0)
		

    table.insert(circular_saw.known_stairs, "gold_and_gem:mese_crystal_block")

end



