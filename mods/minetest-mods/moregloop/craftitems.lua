--The Kalite CraftItems
minetest.register_craftitem("moregloop:kalite_shard", {
	description = "Kalite Shard",
	inventory_image = "moregloop_kalite_shard.png",
	groups = {gloop=1},
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("moregloop:kalite_crystal", {
	description = "Kalite Crystal",
	inventory_image = "moregloop_kalite_crystal.png",
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("moregloop:kalite_gem", {
	description = "Kalite Gem",
	inventory_image = "moregloop_kalite_gem.png",
	on_use = minetest.item_eat(50),
})

--The Alatro CraftItems
minetest.register_craftitem("moregloop:alatro_shard", {
	description = "Alatro Shard",
	groups = {gloop=1},
	inventory_image = "moregloop_alatro_shard.png",
	full_punch_interval = 0.5,
})

minetest.register_craftitem("moregloop:alatro_crystal", {
	description = "Alatro Crystal",
	inventory_image = "moregloop_alatro_crystal.png",
	full_punch_interval = 0.5,
})

minetest.register_craftitem("moregloop:alatro_gem", {
	inventory_image = "moregloop_alatro_gem.png",
	full_punch_interval = 0.5,
})

--The Arol CraftItems
minetest.register_craftitem("moregloop:arol_shard", {
	description = "Arol Shard",
	groups = {gloop=1},
	inventory_image = "moregloop_arol_shard.png",
	full_punch_interval = 0.5,
})

minetest.register_craftitem("moregloop:arol_crystal", {
	description = "Arol Crystal",
	inventory_image = "moregloop_arol_crystal.png",
	full_punch_interval = 0.5,
})

minetest.register_craftitem("moregloop:arol_gem", {
	description = "Arol Gem",
	inventory_image = "moregloop_arol_gem.png",
	full_punch_interval = 0.5,
})

--The Akalin CraftItems
minetest.register_craftitem("moregloop:akalin_shard", {
	description = "Akalin Shard",
	groups = {gloop=1},
	inventory_image = "moregloop_akalin_shard.png",
	full_punch_interval = 0.5,
})

minetest.register_craftitem("moregloop:akalin_crystal", {
	description = "Akalin Crystal",
	inventory_image = "moregloop_akalin_crystal.png",
	full_punch_interval = 0.5,
})

minetest.register_craftitem("moregloop:akalin_gem", {
	description = "Akalin Gem",
	inventory_image = "moregloop_akalin_gem.png",
	full_punch_interval = 0.5,
})

--The Talinite CraftItems
minetest.register_craftitem("moregloop:talinite_shard", {
	description = "Talinite Shard",
	groups = {gloop=1},
	inventory_image = "moregloop_talinite_shard.png",
	full_punch_interval = 0.5,
})

minetest.register_craftitem("moregloop:talinite_crystal", {
	description = "Talinite Crystal",
	inventory_image = "moregloop_talinite_crystal.png",
	full_punch_interval = 0.5,
})

minetest.register_craftitem("moregloop:talinite_gem", {
	description = "Talinite Gem",
	inventory_image = "moregloop_talinite_gem.png",
	full_punch_interval = 0.5,
})
