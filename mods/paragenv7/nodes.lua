minetest.register_alias("paragenv7:dirt","default:dirt")
minetest.register_alias("paragenv7:grass","default:grass")
minetest.register_alias("paragenv7:pinetree","default:pinetree")

minetest.register_node("paragenv7:dirt", {
	description = "Dirt",
	tiles = {"default_dirt.png"},
	groups = {crumbly=3,soil=1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("paragenv7:grass", {
	description = "Grass",
	tiles = {"default_grass.png", "default_dirt.png",
			"default_dirt.png^default_grass_side.png"}, -- default style
	--tiles = {"default_grass.png", "default_dirt.png",
			--"default_grass.png"}, -- paramat style
	groups = {crumbly=3,soil=1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("paragenv7:drygrass", {
	description = "Dry Grass",
	tiles = {"paragenv7_drygrass.png"},
	groups = {crumbly=3,soil=1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
})

minetest.register_node("paragenv7:permafrost", {
	description = "Permafrost",
	tiles = {"paragenv7_permafrost.png"},
	groups = {crumbly=2},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("paragenv7:goldengrass", {
	description = "Golden Grass",
	drawtype = "plantlike",
	tiles = {"paragenv7_goldengrass.png"},
	inventory_image = "paragenv7_goldengrass.png",
	wield_image = "paragenv7_goldengrass.png",
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("paragenv7:cactus", {
	description = "Cactus",
	tiles = {"default_cactus_top.png", "default_cactus_top.png",
			"default_cactus_side.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {snappy=1,choppy=3,flammable=2},
	drop = "default:cactus",
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("paragenv7:appleleaf", {
	description = "Appletree Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"default_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{items = {"paragenv7:appling"}, rarity = 20},
			{items = {"paragenv7:appleleaf"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("paragenv7:appling", {
	description = "Appletree Sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_sapling.png"},
	inventory_image = "default_sapling.png",
	wield_image = "default_sapling.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("paragenv7:jungleleaf", {
	description = "Jungletree Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"default_jungleleaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=4, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{items = {"paragenv7:jungling"}, rarity = 20},
			{items = {"paragenv7:jungleleaf"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("paragenv7:jungling", {
	description = "Jungletree sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_junglesapling.png"},
	inventory_image = "default_junglesapling.png",
	wield_image = "default_junglesapling.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("paragenv7:vine", {
	description = "Jungletree Vine",
	drawtype = "airlike",
	paramtype = "light",
	walkable = false,
	climbable = true,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	groups = {not_in_creative_inventory=1},
})

minetest.register_node("paragenv7:acacialeaf", {
	description = "Acacia Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"paragenv7_acacialeaf.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=4, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{items = {"paragenv7:acacialing"}, rarity = 20},
			{items = {"paragenv7:acacialeaf"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("paragenv7:acacialing", {
	description = "Acacia tree sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"paragenv7_acacialing.png"},
	inventory_image = "paragenv7_acacialing.png",
	wield_image = "paragenv7_acacialing.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("paragenv7:acaciatree", {
	description = "Acacia Tree",
	tiles = {"paragenv7_acaciatreetop.png", "paragenv7_acaciatreetop.png",
			"paragenv7_acaciatree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("paragenv7:acaciawood", {
	description = "Acacia Wood Planks",
	tiles = {"paragenv7_acaciawood.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("paragenv7:needles", {
	description = "Pine Needles",
	drawtype = "allfaces_optional",
	tiles = {"default_pine_needles.png"},
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3},
	drop = {
		max_items = 1,
		items = {
			{items = {"paragenv7:pineling"}, rarity = 20},
			{items = {"paragenv7:needles"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("paragenv7:pineling", {
	description = "Pine sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"default_pine_sapling.png"},
	inventory_image = "default_pine_sapling.png",
	wield_image = "default_pine_sapling.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

-- Crafting

minetest.register_craft({
	output = "paragenv7:acaciawood 4",
	recipe = {
		{"paragenv7:acaciatree"},
	}
})

minetest.register_craft({
	output = "paragenv7:pinewood 4",
	recipe = {
		{"paragenv7:pinetree"},
	}
})

minetest.register_craftitem("paragenv7:acacia_stick", {
	description = "Acacia Stick",
	inventory_image = "paragenv7:acacia_stick.png",
	groups = {stick=1},
})

minetest.register_craft({
	output = "paragenv7:acacia_stick 4",
	recipe = {{"paragenv7:acaciawood"},}
})
