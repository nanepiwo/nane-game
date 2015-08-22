-- BobBlocks mod by RabbiBob, edited by rubberduck and added into goldgem-mod

if gold_and_gem.enable_bobblocks then

    local bobbs = {
        { "redblock",					"Red BobBlock"},
        { "orangeblock",				"Orange BobBlock"},
        { "yellowblock",				"Yellow BobBlock"},
        { "greenblock",				"Green BobBlock"},
        { "blueblock",					"Blue BobBlock"},
        { "indigoblock",				"Indigo BobBlock"},
        { "violetblock",				"Violet BobBlock"},
        { "whiteblock",				"White BobBlock"},
        { "greyblock",					"Grey BobBlock"},
        { "pinkblock",					"Pink BobBlock"},
        { "limeblock",					"Lime BobBlock"},
        { "cyanblock",					"Cyan BobBlock"},
        { "redpole",					"Red BobPole"},
        { "orangepole",				"Orange BobPole"},
        { "yellowpole",				"Yellow BobPole"},
        { "greenpole",				"Green BobPole"},
        { "bluepole",					"Blue BobPole"},
        { "indigopole",				"Indigo BobPole"},
        { "violetpole",				"Violet BobPole"},
        { "whitepole",				"White BobPole"},
        { "greypole",					"Grey BobPole"},
        { "pinkpole",					"Pink BobPole"},
        { "limepole",					"Lime BobPole"},
        { "cyanpole",					"Cyan BobPole"}
    }




    local orig_bobbs = { "redblock", "orangeblock", "yellowblock", "greenblock", "blueblock", "indigoblock", "violetblock", "whiteblock", "greyblock", "redpole", "orangepole", "yellowpole", "greenpole", "bluepole", "indigopole", "violetpole", "whitepole", "greypole"}


    local update_bobblock = function (pos, node)
        local nodename=""
        local param2=""
        for i in ipairs(bobbs) do
            local bob = bobbs[i][1]
            if
                node.name == "gold_and_gem:"..bob.."_off" then nodename = "gold_and_gem:"..bob
            elseif

                node.name == "gold_and_gem:"..bob then nodename = "gold_and_gem:"..bob.."_off"
            end
        end

        minetest.env:add_node(pos, {name = nodename})
        minetest.sound_play("bobblocks_glassblock",
        {pos = pos, gain = 1.0, max_hear_distance = 32,})
    end


    -- Punch Blocks
    local on_bobblock_punched = function (pos, node, puncher)
        for i in ipairs(bobbs) do
            local block = bobbs[i][1]
                if
                    node.name == "gold_and_gem:"..block or node.name == "gold_and_gem:"..block.."_off"
                then
                update_bobblock(pos, node)
                end
        end
    end

    minetest.register_on_punchnode(on_bobblock_punched)


    for i in ipairs(bobbs) do
        local block = bobbs[i][1]
        local bobname = bobbs[i][2]
        if string.find(block, "block") then
            minetest.register_node("gold_and_gem:"..block, {
                description = bobname,
                drawtype = "glasslike",
                tile_images = {"bobblocks_"..block..".png"},
                inventory_image = minetest.inventorycube("bobblocks_"..block..".png"),
                paramtype = "light",
                sunlight_propagates = true,
                is_ground_content = true,
                sounds = default.node_sound_glass_defaults(),
                light_source = LIGHT_MAX-0,
                groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
            })

            minetest.register_node("gold_and_gem:"..block.."_off", {
                description = bobname,
                tile_images = {"bobblocks_"..block.."_off.png"},
                is_ground_content = true,
                alpha = WATER_ALPHA,
                groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
                drop = "gold_and_gem:"..block,
            })
        end
    end

    for i in ipairs(bobbs) do
        local pole = bobbs[i][1]
        local bobname = bobbs[i][2]
        if string.find(pole, "pole") then
            blockname = ("bobblocks_"..pole.."block")
            if string.find(blockname, "pole") then
                blockname = blockname:gsub("pole", "")
            end

            minetest.register_node("gold_and_gem:"..pole, {
                description = bobname,
                drawtype = "fencelike",
                tile_images = {""..blockname..".png"},
                inventory_image = ("bobblocks_inv"..pole..".png"),
                paramtype = "light",
                sunlight_propagates = true,
                is_ground_content = true,
                sounds = default.node_sound_glass_defaults(),
                light_source = LIGHT_MAX-0,
                groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
            })

            minetest.register_node("gold_and_gem:"..pole.."_off", {
                description = bobname,
                drawtype = "fencelike",
                tile_images = {""..blockname.."_off.png"},
                inventory_image = ("bobblocks_inv"..pole..".png"),
                paramtype = "light",
                sunlight_propagates = true,
                is_ground_content = true,
                sounds = default.node_sound_glass_defaults(),
                light_source = LIGHT_MAX-10,
                groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
        drop = "gold_and_gem:"..pole,
    })

        end
    end




    --new recipes:

    -- pink: ...a/pink wool
    --lime: uranium ingot  /green wool (dark green)
    --cyan: ...talinite ingot /cyan wool
    --diamonds to chromium

    for i in ipairs(orig_bobbs) do
        local bob = orig_bobbs[i]
        minetest.register_alias("bobblocks:"..bob.."_off", "gold_and_gem:"..bob.."_off")
        minetest.register_alias("bobblocks:"..bob, "gold_and_gem:"..bob)
    end

end
