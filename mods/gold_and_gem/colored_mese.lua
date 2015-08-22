if gold_and_gem.enable_colorable_meseblocks then

    local colored_block_modname = "gold_and_gem"
    local colored_block_texname = "goldgem"
    local colored_block_description = "Mese Block"
    local colored_block_sunlight = "false"
    local colored_block_walkable = "true"
    local colored_block_groups = {cracky=1,level=2, not_in_creative_inventory=1}
    local colored_block_sound = "default.node_sound_stone_defaults()"








    local shades = {
        "dark_",
        "medium_",
        ""	-- represents "no special shade name", e.g. full.
    }
    local shades2 = {
        "Dark ",
        "Medium ",
        ""	-- represents "no special shade name", e.g. full.
    }
    local hues = {
        "red",
        "orange",
        "yellow",
        "lime",
        "green",
        "aqua",
        "cyan",
        "skyblue",
        "blue",
        "violet",
        "magenta",
        "redviolet"
    }
        local hues2 = {
        "Red ",
        "Orange ",
        "Yellow ",
        "Lime ",
        "Green ",
        "Aqua ",
        "Cyan ",
        "Sky Blue ",
        "Blue ",
        "Violet ",
        "Magenta ",
        "Red-violet "
    }
        local greys = {
        "black",
        "darkgrey",
        "grey",
        "lightgrey",
        "white"
    }
        local greys2 = {
        "Black ",
        "Dark Grey ",
        "Medium Grey ",
        "Light Grey ",
        "White "
    }
        local greys3 = {
        "black",
        "darkgrey_paint",
        "grey",
        "lightgrey_paint",
        "white_paint"
    }

    for shade = 1, 3 do
        local shadename = shades[shade]
        local shadename2 = shades2[shade]
        for hue = 1, 12 do
            local huename = hues[hue]
            local huename2 = hues2[hue]

            local colorname = colored_block_modname..":mese_"..shadename..huename
            local pngname = colored_block_texname.."_mese_"..shadename..huename..".png"
            local nodedesc = shadename2..huename2..colored_block_description

            local s50colorname = colored_block_modname..":mese_"..shadename..huename.."_s50"
            local s50pngname = colored_block_texname.."_mese_"..shadename..huename.."_s50.png"
            local s50nodedesc = shadename2..huename2..colored_block_description.." (50% Saturation)"

            minetest.register_node(colorname, {
                description = nodedesc,
                tiles = { pngname },
                sunlight_propagates = colored_block_sunlight,
                paramtype = "light",
                walkable = colored_block_walkable,
                groups = colored_block_groups,
                sounds = colored_block_sound,

            })

            minetest.register_node(s50colorname, {
                description = s50nodedesc,
                tiles = { s50pngname },
                sunlight_propagates = colored_block_sunlight,
                paramtype = "light",
                walkable = colored_block_walkable,
                groups = colored_block_groups,
                sounds = colored_block_sound,

            })


            minetest.register_craft( {
                type = "shapeless",
                output = colorname.." 1",
                recipe = {
                "default:mese",
                "unifieddyes:"..shadename..huename
                },

            })

            minetest.register_craft( {
                type = "shapeless",
                output = s50colorname.." 1",
                recipe = {
                "default:mese",
                "unifieddyes:"..shadename..huename.."_s50"
                },

            })
        end
    end


    for hue = 1, 12 do
        local huename = hues[hue]
        local huename2 = hues2[hue]
        local colorname = colored_block_modname..":mese_light_"..huename
        local pngname = colored_block_texname.."_mese_light_"..huename..".png"
        local nodedesc = "Light "..huename2..colored_block_description

        minetest.register_node(colorname, {
            description = nodedesc,
            tiles = { pngname },
            sunlight_propagates = colored_block_sunlight,
            paramtype = "light",
            walkable = colored_block_walkable,
            groups = colored_block_groups,
            sounds = colored_block_sound,

        })

        minetest.register_craft( {
            type = "shapeless",
            output = colorname.." 1",
            recipe = {
            "default:mese",
            "unifieddyes:".."light_"..huename
            },

        })

    end


    minetest.register_node(colored_block_modname..":mese_brown", {
            description = "Brown "..colored_block_description,
            tiles = { "goldgem_mese_brown.png" },
            sunlight_propagates = colored_block_sunlight,
            paramtype = "light",
            walkable = colored_block_walkable,
            groups = colored_block_groups,
            sounds = colored_block_sound,

        })

    minetest.register_craft( {
        type = "shapeless",
        output = colored_block_modname..":mese_brown 1",
        recipe = {
        "default:mese",
        "dye:brown"
        },

    })

    for grey = 1,5 do
        local greyname = greys[grey]
        local greyname2 = greys2[grey]
        local greyname3 = greys3[grey]
        local greyshadename = colored_block_modname..":mese_"..greyname
        local pngname = colored_block_texname.."_mese_"..greyname..".png"
        local nodedesc = greyname2..colored_block_description

        minetest.register_node(greyshadename, {
            description = nodedesc,
            tiles = { pngname },
            sunlight_propagates = colored_block_sunlight,
            paramtype = "light",
            walkable = colored_block_walkable,
            groups = colored_block_groups,
            sounds = colored_block_sound,

        })

        if grey == 1 or grey == 3   then
            minetest.register_craft( {
                type = "shapeless",
                output = greyshadename.." 1",
                recipe = {
                "default:mese",
                "dye:"..greyname3
                },

        })
        else

        minetest.register_craft( {
            type = "shapeless",
            output = greyshadename.." 1",
            recipe = {
            "default:mese",
            "unifieddyes:"..greyname3
            },

        })
        end
    end






    if not minetest.get_modpath("technic") then

        minetest.register_craft( {
            type = "cooking",
            output = "gold_and_gem:rainbow_dye 3",
            recipe = "gold_and_gem:rainbow_mese_block",
            cooktime = 28

        })
    else

        local recipes = {
            {"gold_and_gem:rainbow_mese_block", "gold_and_gem:rainbow_dye 2"},

            }

            for _, data in pairs(recipes) do
            technic.register_grinder_recipe({time = 22, input = {data[1]}, output = data[2]})
        end
    end

    minetest.register_node("gold_and_gem:rainbow_mese_block", {
        description = "Rainbow Mese Block",
        tiles = { "goldgem_rainbow_mese_block.png" },
        sunlight_propagates = "false",
        paramtype = "light",
        walkable = "true",
        groups = {cracky=1,level=2},
        sounds = "default.node_sound_stone_defaults()",

    })

    minetest.register_craft( {
                type = "shapeless",
                output = "gold_and_gem:rainbow_mese_block 8",
                recipe = {

                "gold_and_gem:mese_red",
                "gold_and_gem:mese_orange",
                "default:mese",
                "gold_and_gem:mese_green",
                "gold_and_gem:mese_aqua",
                "gold_and_gem:mese_cyan",
                "gold_and_gem:mese_blue",
                "gold_and_gem:mese_magenta",
                "default:glass"
                },

            })

    minetest.register_craftitem("gold_and_gem:rainbow_dye", {
            description = "Mese Rainbow dye",
            inventory_image = "goldgem_rainbow_dye.png",
    })

    if gold_and_gem.enable_nyan_cat_crafting then

        minetest.register_craftitem("gold_and_gem:raw_nyan_cat", {
                description = "Raw Nyan Cat",
                inventory_image = "goldgem_nc_raw.png",
        })

        minetest.register_craftitem("gold_and_gem:raw_nyan_cat_rainbow", {
                description = "Raw Nyan Cat Rainbow",
                inventory_image = "goldgem_nc_rb_raw.png",
        })

        minetest.register_craft( {
                    output = "gold_and_gem:raw_nyan_cat",
                    recipe = {

                    {"dye:magenta", "farming:flour", "dye:violet"},
                    {"gold_and_gem:rainbow_dye", "gold_and_gem:rainbow_dye", "gold_and_gem:rainbow_dye"},
                    {"dye:violet", "farming:flour", "dye:magenta" },
                    },

                })



        minetest.register_craft( {
                    type = "cooking",
                    output = "default:nyancat",
                    recipe = "gold_and_gem:raw_nyan_cat",
                    cooktime = 40



                })

        minetest.register_craft( {
                    output = "gold_and_gem:raw_nyan_cat_rainbow",
                    recipe = {

                    {"gold_and_gem:rainbow_dye", "gold_and_gem:rainbow_dye", "gold_and_gem:rainbow_dye"},
                    {"gold_and_gem:rainbow_mese_block", "default:nyancat", "gold_and_gem:rainbow_mese_block"},
                    {"gold_and_gem:rainbow_dye", "gold_and_gem:rainbow_dye", "gold_and_gem:rainbow_dye" },
                    },

                })

        minetest.register_craft( {
                    type = "cooking",
                    output = "default:nyancat_rainbow",
                    recipe = "gold_and_gem:raw_nyan_cat_rainbow",
                    cooktime = 52



                })

    end


end

