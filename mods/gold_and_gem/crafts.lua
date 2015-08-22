local border_blocks = {
	{ "goldblock",				"default"},
	{ "diamondblock",		"default" },
	{ "glass",					"default"},
	{ "mithril_block",			"moreores"},
	{ "silver_block",			"moreores" },
	{ "amethystblock",		"glooptest" },
	{ "emeraldblock",			"glooptest" },
	{ "rubyblock",				"glooptest"},
	{ "sapphireblock",		"glooptest" },
	{ "taliniteblock",			"glooptest" },
	{ "topazblock",			"glooptest" },
	{ "crystal_glass",			"glooptest" },
	{ "quartz",			"quartz" }
}

for i in ipairs(border_blocks) do
	local block = border_blocks[i][1]
	local block2 = border_blocks[i][1]
	local mod = border_blocks[i][2]

    if block2 == "quartz" then
            block = "block"
        end

	if block ~= "goldblock" then


		minetest.register_craft( {
			    output = "gold_and_gem:golden_"..block2.." 5",
			    recipe = {
					{"default:gold_ingot", mod .. ":" ..  block, "default:gold_ingot"},
					{ mod .. ":" ..  block, mod .. ":" ..  block, mod .. ":" ..  block},
					{"default:gold_ingot", mod .. ":" ..  block, "default:gold_ingot"},
			    },
		})

	end

	if block ~= "mithril_block" then

		minetest.register_craft( {
			    output = "gold_and_gem:mithril_"..block2.." 5",
			    recipe = {
					{"moreores:mithril_ingot", mod .. ":" ..  block, "moreores:mithril_ingot"},
					{ mod .. ":" ..  block, mod .. ":" ..  block, mod .. ":" ..  block},
					{"moreores:mithril_ingot", mod .. ":" ..  block, "moreores:mithril_ingot"},
			    },
		})

	end

end

local glass_tables = { "glass_table_small_round_b", "glass_table_small_square_b", "glass_table_large_b"}
local table_borders = {
	{ "gold",				"default:gold_ingot"},
	{ "mithril",				"moreores:mithril_ingot"},
	{ "emerald",			"glooptest:emerald_gem"},
	{ "ruby",				"glooptest:ruby_gem"}

}

for i in ipairs(glass_tables) do
	local table = glass_tables[i]

	for j in ipairs(table_borders) do
		local border = table_borders[j][1]
		local border_item = table_borders[j][2]

		minetest.register_craft( {
				    output = "gold_and_gem:"..border.. "_" ..table.." 3",
				    recipe = {
						{border_item, "", border_item},
						{ "homedecor:" ..table,  "homedecor:" ..table, "homedecor:" ..table},
						{"", "", ""},
				    },
			})
	end
end

if gold_and_gem.enable_bobblocks then

    local bobblock = {
        { "blue",		"moreores",		"mithril_ingot", 		"wool:blue"},
        { "green",		"glooptest",		"arol_ingot", 			"wool:dark_green"},
        { "grey",		"default", 		"stone", 				""},
        { "indigo",		"glooptest", 		"akalin_ingot", 		"wool:magenta"},
        { "orange",		"glooptest", 		"topaz_gem", 			"wool:orange"},
        { "red",		"glooptest", 		"ruby_gem", 			"wool: red"},
        { "violet",		"glooptest",		"alatro_ingot", 		"wool: violet"},
        { "white",		"quartz", 		"quartz_crystal", 			"default:diamond"},
        { "yellow",		"default",		"mese_crystal", 		""},
        { "lime",		"technic",		"uranium_ingot", 		"wool:green"},
        { "pink",		"glooptest",		"amethyst_gem", 		"wool:pink"},
        { "cyan",		"glooptest",		"talinite_ingot", 		"wool:cyan"}


    }

    local light_source = "homedecor:glowlight_small_cube_white"

    if not minetest.get_modpath("homedecor") then

        light_source = "default:torch"

    end

    for i in ipairs(bobblock) do
        local block = bobblock[i][1]
        local mod 	 = bobblock[i][2]
        local mod_item 	 = bobblock[i][3]
        local d_item 	 = bobblock[i][4]
        local item = mod ..":".. mod_item


        if (mod ~= "default" and not minetest.get_modpath(mod))then

            item = d_item

        end




        minetest.register_craft({
            output = "gold_and_gem:"..block.."block 4",
            recipe = {
                {"default:glass", item, "default:obsidian_glass"},
                { item,light_source,item},
                {"default:obsidian_glass", item, "default:glass"},
            },
        })

        minetest.register_craft({
        type = "shapeless",
            output = "gold_and_gem:"..block.."pole 4",
            recipe = {
                "gold_and_gem:"..block.."block"

            },
        })

    end
end
local gemlamps = {
        {"glooptest:ruby_gem", "ruby"},
        {"glooptest:amethyst_gem", "amethyst"},
        {"glooptest:emerald_gem", "emerald"},
        {"glooptest:topaz_gem", "topaz"},
        {"glooptest:sapphire_gem", "sapphire"},
        {"default:diamond", "diamond"}
}

for i in ipairs(gemlamps) do
	local gem = gemlamps[i][1]
	local gem2 = gemlamps[i][2]
	light_source = "homedecor:candle"

	if not minetest.get_modpath("homedecor") then

		light_source = "default:torch"
	end



	minetest.register_craft({
	output = "gold_and_gem:"..gem2.."_lamp 2",
    recipe = {
			{gem,"", gem},
			{ "technic:marble",light_source,"technic:marble"},
			{"", "moreores:silver_ingot", ""},
		},
	})
end

local pillars = {"gold","silver"}

for i in ipairs(pillars) do
	local pill  = pillars[i]
	minetest.register_craft({
	output = "gold_and_gem:pillar_"..pill.." 6",
		recipe = {
			{"technic:marble","technic:marble", "technic:marble"},
			{ "technic:fine_"..pill.."_wire","technic:marble","technic:fine_"..pill.."_wire"},
			{"technic:marble", "technic:marble", "technic:marble"},
		},
	})
	minetest.register_craft({
	output = "gold_and_gem:pillar_ground_"..pill.." 2",
		recipe = {
			{"","gold_and_gem:pillar_"..pill, ""},
			{ "","gold_and_gem:pillar_"..pill,""},
			{"technic:slab_marble_quarter", "technic:slab_marble_quarter", "technic:slab_marble_quarter"},
		},
	})

	minetest.register_craft({
	output = "gold_and_gem:pillar_top_"..pill.." 2",
		recipe = {
			{"technic:slab_marble_quarter", "technic:slab_marble_quarter", "technic:slab_marble_quarter"},
			{ "","gold_and_gem:pillar_"..pill,""},
			{"","gold_and_gem:pillar_"..pill,""},
		},
	})

end

minetest.register_craft({
output = "gold_and_gem:pillar 6",
	recipe = {
		{"technic:marble","technic:marble", "technic:marble"},
		{ "technic:marble_bricks","technic:marble","technic:marble_bricks"},
		{"technic:marble", "technic:marble", "technic:marble"},
	},
})
minetest.register_craft({
output = "gold_and_gem:pillar_ground 2",
	recipe = {
		{"","gold_and_gem:pillar", ""},
		{ "","gold_and_gem:pillar",""},
		{"technic:slab_marble_quarter", "technic:slab_marble_quarter", "technic:slab_marble_quarter"},
	},
})

minetest.register_craft({
output = "gold_and_gem:pillar_top 2",
	recipe = {
		{"technic:slab_marble_quarter", "technic:slab_marble_quarter", "technic:slab_marble_quarter"},
		{ "","gold_and_gem:pillar",""},
		{"","gold_and_gem:pillar",""},
	},
})

local checkerblocks = {
	{ "gold",		"default",		"gold_ingot"},
	{ "mithril",		"moreores",		"mithril_ingot"},
	{ "diamond",		"default", 		"diamond"},
	{ "kalite",		"glooptest", 		"kalite_lump"},
	{ "arol",		"glooptest", 		"arol_ingot"},
	{ "granite",		"technic", 		"granite"}
}

for i in ipairs(checkerblocks) do
	local block = checkerblocks[i][1]
	local mod = checkerblocks[i][2]
	local craftitem = checkerblocks[i][3]
	local item = mod ..":".. craftitem

local stairs = { "stair",		"slab"}




	minetest.register_craft({
		output = "gold_and_gem:checkerblock_"..block .." 4",
		recipe = {
		{"technic:marble", item},
		{item, "technic:marble"},
		}
	})
	minetest.register_craft({
		output = "gold_and_gem:checkerblock_"..block .." 4",
		recipe = {
		{item, "technic:marble"},
		{"technic:marble", item},
		}
	})
	minetest.register_craft({
	type = "shapeless",
		output = "gold_and_gem:checkerblock_"..block,
		recipe = {
			"gold_and_gem:checkerblock_mirrored_"..block

		},
	})
	minetest.register_craft({
	type = "shapeless",
		output = "gold_and_gem:checkerblock_mirrored_"..block,
		recipe = {
			"gold_and_gem:checkerblock_"..block

		},
	})



	for j in ipairs(stairs) do
	local stair = stairs[j]

	minetest.register_craft({
	type = "shapeless",
		output = "stairs:"..stair.."_checkerblock_mirrored_"..block,
		recipe = {
			"stairs:"..stair.."_checkerblock_"..block

		},
	})

	minetest.register_craft({
	type = "shapeless",
		output = "stairs:"..stair.."_checkerblock_"..block,
		recipe = {
			"stairs:"..stair.."_checkerblock_mirrored_"..block

		},
	})

	end


end


local gsq_poles = {
{"gold", "technic:fine_gold_wire", "default:gold_ingot"},
{"silver", "technic:fine_silver_wire", "moreores:silver_ingot"},
{"quartz", "quartz:quartz_crystal", "quartz:quartz_crystal"}
}

for i in ipairs(gsq_poles) do
	local pole = gsq_poles[i][1]
	local item = gsq_poles[i][2]
	local item2 = gsq_poles[i][3]

	minetest.register_craft({
		output = "gold_and_gem:"..pole.."pole 4",
		recipe = {
		{"",item, ""},
		{ "",item,""},
		{"",item,""},
        },
	})
	minetest.register_craft({
		output = "gold_and_gem:"..pole.."pole_bottom 3",
		recipe = {
		{"","gold_and_gem:"..pole.."pole", ""},
		{ "","gold_and_gem:"..pole.."pole",""},
		{"",item2,""},
        },
	})

	minetest.register_craft({
		output = "gold_and_gem:"..pole.."pole_top 3",
		recipe = {
		{"",item2, ""},
		{ "","gold_and_gem:"..pole.."pole",""},
		{"","gold_and_gem:"..pole.."pole",""},
        },
	})

	minetest.register_craft({
		output = "gold_and_gem:"..pole.."pole_both 3",
		recipe = {
		{"",item2, ""},
		{ "","gold_and_gem:"..pole.."pole",""},
		{"",item2,""},
        },
	})



end

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:silverpole",

		recipe = {
			"gold_and_gem:silver_fence_pole"
		},
	})

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:silver_fence_pole",

		recipe = {
			"gold_and_gem:silverpole"
		},
	})



local poletypes = {"gold_and_gem:silver_fence_pole", "gold_and_gem:silverpole"}
for i in ipairs(poletypes) do
    local pole = poletypes[i]

    minetest.register_craft({
        output = "gold_and_gem:silver_wire_fence_post 2",
        recipe = {
            {pole},
            {pole},
            {pole},
            },
        })

    minetest.register_craft({
            output = "gold_and_gem:fence_silver_mithril_ending 2",
            recipe = {

            {pole},
            {pole},
            {"moreores:mithril_ingot"},
            },
        })
    minetest.register_craft({
            output = "gold_and_gem:fence_silver_mithril 2",
            recipe = {

            {"",pole,""},
            {"moreores:mithril_ingot", pole, "moreores:mithril_ingot"},
            },
        })
    minetest.register_craft({
            output = "gold_and_gem:fence_silver_mithril_edge 2",
            recipe = {

            {pole,""},
            {pole, "moreores:mithril_ingot"},
            {"moreores:mithril_ingot", ""},
            },
        })
    minetest.register_craft({
            output = "gold_and_gem:fence_silver_mithril_t 2",
            recipe = {

            {"",pole,""},
            {"moreores:mithril_ingot", pole, "moreores:mithril_ingot"},
            {"", "moreores:mithril_ingot", ""},
            },
        })
    minetest.register_craft({
            output = "gold_and_gem:fence_silver_mithril_crossing",
            recipe = {

            {"moreores:mithril_ingot" , pole, "moreores:mithril_ingot"},
            },
        })

end




minetest.register_craft({
        output = "gold_and_gem:fence_quartz 4",
        recipe = {
            {"quartz:quartz_crystal", "quartz:quartz_crystal", "quartz:quartz_crystal"},
            {"quartz:quartz_crystal", "quartz:quartz_crystal", "quartz:quartz_crystal"},
            },
        })

minetest.register_craft({
        output = "gold_and_gem:fence_gold 4",
        recipe = {
            {"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
            {"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
            },
        })

minetest.register_craft({
        output = "gold_and_gem:silver_wire_fence 6",
        recipe = {
            {"technic:fine_silver_wire", "technic:fine_silver_wire", "technic:fine_silver_wire"},
            {"moreores:silver_ingot", "moreores:silver_ingot", "moreores:silver_ingot"},
            },
        })

minetest.register_craft({
        output = "gold_and_gem:silver_wire_fence_right_end",
        recipe = {
            {"gold_and_gem:silver_wire_fence", "gold_and_gem:silver_wire_fence_post"},
            },
        })

minetest.register_craft({
        output = "gold_and_gem:silver_wire_fence_edge",
        recipe = {
            {"gold_and_gem:silver_wire_fence", "gold_and_gem:silver_wire_fence_post"},
            {"", "gold_and_gem:silver_wire_fence"},
            },
        })

minetest.register_craft({
        output = "gold_and_gem:silver_wire_fence_left_end",
        recipe = {
            {"gold_and_gem:silver_wire_fence_post", "gold_and_gem:silver_wire_fence"},
            },
        })

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:silver_wire_fence_edge",

		recipe = {
			"gold_and_gem:silver_wire_fence_left_end",
			"gold_and_gem:silver_wire_fence",
		},
	})

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:silver_wire_fence_edge",

		recipe = {
			"gold_and_gem:silver_wire_fence_right_end",
			"gold_and_gem:silver_wire_fence",
		},
	})

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:silver_wire_fence_right_end",

		recipe = {
			"gold_and_gem:silver_wire_fence_left_end",
		},
	})

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:silver_wire_fence_left_end",

		recipe = {
			"gold_and_gem:silver_wire_fence_right_end",
		},
	})

--gold/mithril - fences
minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fencepole 3",

		recipe = {
            { "moreores:mithril_ingot"},
            { "default:gold_ingot"},
            { "default:gold_ingot"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_6 4",

		recipe = {
            {"default:gold_ingot", "default:gold_ingot","default:gold_ingot"},
            { "default:gold_ingot", "", "default:gold_ingot"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_1 4",

		recipe = {
            {"", "", "moreores:mithril_ingot"},
            {"default:gold_ingot", "default:gold_ingot","default:gold_ingot"},
            { "default:gold_ingot", "", "default:gold_ingot"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_2 4",

		recipe = {
            {"", "", "default:gold_ingot"},
            {"default:gold_ingot", "default:gold_ingot","default:gold_ingot"},
            { "default:gold_ingot", "", "default:gold_ingot"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_3",

		recipe = {
            {"gold_and_gem:gold_mithril_fence_2", "gold_and_gem:gold_mithril_fencepole","gold_and_gem:gold_mithril_fence_5"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_4 4",

		recipe = {
            {"moreores:mithril_ingot", "", ""},
            {"default:gold_ingot", "default:gold_ingot","default:gold_ingot"},
            { "default:gold_ingot", "", "default:gold_ingot"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_5 4",

		recipe = {
            {"default:gold_ingot", "", ""},
            {"default:gold_ingot", "default:gold_ingot","default:gold_ingot"},
            { "default:gold_ingot", "", "default:gold_ingot"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fencepole_2 3",

		recipe = {
            { "moreores:mithril_ingot"},
            { "technic:fine_gold_wire"},
            { "default:gold_ingot"},
            },
        })

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:gold_mithril_fence_4",

		recipe = {
			"gold_and_gem:gold_mithril_fence_1",
		},
	})

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:gold_mithril_fence_1",

		recipe = {
			"gold_and_gem:gold_mithril_fence_4",
		},
	})

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:gold_mithril_fence_2",

		recipe = {
			"gold_and_gem:gold_mithril_fence_5",
		},
	})

minetest.register_craft({
    type = "shapeless",
		output = "gold_and_gem:gold_mithril_fence_5",

		recipe = {
			"gold_and_gem:gold_mithril_fence_2",
		},
	})

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_1",

		recipe = {
            {"gold_and_gem:gold_mithril_fence_6","moreores:mithril_ingot"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_2",

		recipe = {
            {"gold_and_gem:gold_mithril_fence_6","default:gold_ingot"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_4",

		recipe = {
            {"moreores:mithril_ingot","gold_and_gem:gold_mithril_fence_6"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:gold_mithril_fence_5",

		recipe = {
            {"default:gold_ingot","gold_and_gem:gold_mithril_fence_6"},
            },
        })

minetest.register_craft({
		output = "gold_and_gem:mese_crystal_block",

		recipe = {
            {"default:mese_crystal", "default:mese_crystal", "default:mese_crystal"},
            {"default:mese_crystal", "default:mese_crystal_fragment", "default:mese_crystal"},
            {"default:mese_crystal", "default:mese_crystal", "default:mese_crystal"},
            },
        })

minetest.register_craft({
    type = "shapeless",
		output = "default:mese_crystal 8",

		recipe = {
			"gold_and_gem:mese_crystal_block",
		},
	})

minetest.register_craft( {
			type = "cooking",
			output = "mesecons:mesecon 146",
			recipe = "gold_and_gem:mese_crystal_block",
			cooktime = 32

		})

