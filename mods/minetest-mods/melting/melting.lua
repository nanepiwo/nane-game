-- Lava Melting

-- Change to Molten Rock
default.change_to_molten = function(pos)
	minetest.set_node(pos, {name="melting:moltenrock"})
end

minetest.register_abm({
	nodenames = {"default:lava_flowing"},
	neighbors = {"default:air"},
	interval = 10,
	chance = 21,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_molten(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"default:lava_source"},
	neighbors = {"default:air"},
	interval = 10,
	chance = 21,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_molten(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"default:stone"},
	neighbors = {"melting:molten_brick"},
	interval = 2,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_molten(pos, node, active_object_count, active_object_count_wider)
	end,
})

-- Change to Lava Source

default.change_to_source = function(pos)
	minetest.set_node(pos, {name="default:lava_source"})
end

minetest.register_abm({
	nodenames = {"melting:moltenrock"},
	neighbors = {"group:lava"},
	interval = 15,
	chance = 21,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_source(pos, node, active_object_count, active_object_count_wider)
	end,
})

-- Change to Flowing Lava

default.change_to_flowing = function(pos)
	minetest.set_node(pos, {name="default:lava_flowing"})
end

minetest.register_abm({
	nodenames = {"melting:moltenrock"},
	neighbors = {"group:lava"},
	interval = 15,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_flowing(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"default:lava_source"},
	neighbors = {"default:air"},
	interval = 15,
	chance = 21,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_flowing(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"default:gravel"},
	neighbors = {"group:lava"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_flowing(pos, node, active_object_count, active_object_count_wider)
	end,
})

-- Change to Stone

default.change_to_stone = function(pos)
	minetest.set_node(pos, {name="default:stone"})
end

minetest.register_abm({
	nodenames = {"default:cobble"},
	neighbors = {"group:lava"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_stone(pos, node, active_object_count, active_object_count_wider)
	end,
})

-- Change to Obsidian

default.change_to_obsidian = function(pos)
	minetest.set_node(pos, {name="default:obsidian"})
end

minetest.register_abm({
	nodenames = {"default:stone"},
	neighbors = {"default:lava_source"},
	interval = 5,
	chance = 5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_obsidian(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"default:stone"},
	neighbors = {"default:lava_flowing"},
	interval = 5,
	chance = 5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_obsidian(pos, node, active_object_count, active_object_count_wider)
	end,
})

-- Change to Obsidian Brick
default.change_to_obsidianbrick = function(pos)
	minetest.set_node(pos, {name="melting:obsidian_brick"})
end

minetest.register_abm({
	nodenames = {"default:obsidian"},
	neighbors = {"default:lava_source"},
	interval = 5,
	chance = 5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_obsidianbrick(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"default:obsidian"},
	neighbors = {"default:lava_flowing"},
	interval = 5,
	chance = 5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_obsidianbrick(pos, node, active_object_count, active_object_count_wider)
	end,
})

-- Sand Changes to Glass
default.change_to_glass = function(pos)
	minetest.set_node(pos, {name="default:glass"})
end

minetest.register_abm({
	nodenames = {"group:sand"},
	neighbors = {"group:lava"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_glass(pos, node, active_object_count, active_object_count_wider)
	end,
})

-- When Water Hits It, Molten Can Change to Iron or Mese
default.change_to_iron = function(pos)
	minetest.set_node(pos, {name="default:stone_with_iron"})
end

default.change_to_mese = function(pos)
	minetest.set_node(pos, {name="default:stone_with_mese"})
end

minetest.register_abm({
	nodenames = {"melting:moltenrock"},
	neighbors = {"group:water"},
	interval = 1,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_iron(pos, node, active_object_count, active_object_count_wider)
	end,
})

minetest.register_abm({
	nodenames = {"melting:moltenrock"},
	neighbors = {"group:water"},
	interval = 1,
	chance = 3,
	action = function(pos, node, active_object_count, active_object_count_wider)
		default.change_to_mese(pos, node, active_object_count, active_object_count_wider)
	end,
})