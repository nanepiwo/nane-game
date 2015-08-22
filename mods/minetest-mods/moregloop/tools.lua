--The Tools
minetest.register_node("moregloop:kalite_torch", {
	description = "Kalite Torch",
	drawtype = "torchlike",
	--tiles = {"moregloop_kalite_torch_on_floor.png", "moregloop_kalite_torch_on_ceiling.png", "moregloop_kalite_torch.png"},
	tiles = {
		{name="moregloop_kalite_torch_on_floor_animated.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=2.0}},
		{name="moregloop_kalite_torch_on_ceiling_animated.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=2.0}},
		{name="moregloop_kalite_torch_animated.png", animation={type="vertical_frames", aspect_w=32, aspect_h=32, length=2.0}}
	},
	inventory_image = "moregloop_kalite_torch_on_floor.png",
	wield_image = "moregloop_kalite_torch_on_floor.png",
	full_punch_interval = 0.8,
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = LIGHT_MAX,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	groups = {choppy=2,dig_immediate=3,flammable=1,lava=3,hot=3,igniter=3},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
})

minetest.register_tool("moregloop:alatro_pick", {
	description = "Alatro Pickaxe",
	inventory_image = "moregloop_tool_alatropick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.80, [2]=0.60, [3]=0.40}, uses=40, maxlevel=3},
			crumbly={times={[1]=0.95, [2]=0.65, [3]=0.35}, uses=40, maxlevel=3},
			choppy={times={[1]=0.80, [2]=0.60, [3]=0.40}, uses=40, maxlevel=3},
			fleshy={times={[1]=0.80, [2]=0.60, [3]=0.40}, uses=40, maxlevel=3},
			snappy={times={[1]=0.80, [2]=0.60, [3]=0.40}, uses=40, maxlevel=3}
		}
	},
})

minetest.register_tool("moregloop:arol_pick", {
	description = "Arol Pickaxe",
	inventory_image = "moregloop_tool_arolpick.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.70, [2]=0.55, [3]=0.40}, uses=40, maxlevel=3},
			crumbly={times={[1]=0.85, [2]=0.60, [3]=0.35}, uses=40, maxlevel=3},
			choppy={times={[1]=0.70, [2]=0.55, [3]=0.40}, uses=40, maxlevel=3},
			fleshy={times={[1]=0.70, [2]=0.55, [3]=0.40}, uses=40, maxlevel=3},
			snappy={times={[1]=0.70, [2]=0.55, [3]=0.40}, uses=40, maxlevel=3}
		}
	},
})

minetest.register_tool("moregloop:akalin_pick", {
	description = "Akalin Pickaxe",
	inventory_image = "moregloop_tool_akalinpick.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.60, [2]=0.50, [3]=0.40}, uses=40, maxlevel=3},
			crumbly={times={[1]=0.75, [2]=0.55, [3]=0.35}, uses=40, maxlevel=3},
			choppy={times={[1]=0.60, [2]=0.50, [3]=0.40}, uses=40, maxlevel=3},
			fleshy={times={[1]=0.60, [2]=0.50, [3]=0.40}, uses=40, maxlevel=3},
			snappy={times={[1]=0.60, [2]=0.50, [3]=0.40}, uses=40, maxlevel=3}
		}
	},
})
