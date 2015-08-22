minetest.register_node("soda:machine", {
	description = "Soda Machine",
	drawtype = "mesh",
	mesh = "soda_machine.obj",
	tiles = {"soda_machine.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=3},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5}
	},
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.above
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name ~= "air" then
			minetest.chat_send_player(placer:get_player_name(), "No room for place the Vending Machine !" )
		return end
		local dir = placer:get_look_dir()
		local node = { name="soda:machine", param1=0, param2 = minetest.dir_to_facedir(dir)}
		minetest.set_node(pos, node)
		itemstack:take_item()
	end,
	
	on_punch = function(pos, node, puncher, pointed_thing)
		local wielditem = puncher:get_wielded_item()
		local wieldname = wielditem:get_name()
		local fdir_to_fwd = {
			{0, -1}, {-1, 0}, {0, 1}, {1, 0}
		}
		local fdir = node.param2
		local pos_drop = { x=pos.x+fdir_to_fwd[fdir+1][1], y=pos.y, z=pos.z+fdir_to_fwd[fdir+1][2] }
		if wieldname == "soda:coin" then
			wielditem:take_item()
			puncher:set_wielded_item(wielditem)
			minetest.spawn_item(pos_drop, "soda:can")
			minetest.sound_play("insert_coin", {
			pos=pos,
			max_hear_distance = 5,
			gain = 1,
		})
		else
			minetest.chat_send_player(puncher:get_player_name(), "Please insert a coin in the machine.")
		end
	end
})

minetest.register_craftitem("soda:can", {
	description = "Soda",
	inventory_image = "soda_can.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("soda:coin", {
	description = "Coin",
	inventory_image = "soda_coin.png",
})

minetest.register_craft({
	output = "soda:machine",
	recipe = {
		{"default:steelblock", "default:glass", "default:steelblock"},
		{"default:steelblock", "default:glass", "default:steelblock"},
		{"default:steelblock", "default:copper_ingot", "default:steelblock"},
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "soda:coin 10",
	recipe = {"default:gold_ingot"}
})
