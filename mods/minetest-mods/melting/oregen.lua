-- Melty Gen

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "melting:moltenrock",
	wherein        = "default:stone",
	clust_scarcity = 60*60*60,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 0,
})
