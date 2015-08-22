gold_and_gem = {}



local worldpath=minetest.get_worldpath()
local modpath=minetest.get_modpath("gold_and_gem")

dofile(modpath.."/default_settings.txt")

if io.open(worldpath.."/goldgem_settings.txt","r") == nil then
    io.input(modpath.."/default_settings.txt")
    io.output(worldpath.."/goldgem_settings.txt")

    local size = 2^13 -- good buffer size (8K)
    while true do
        local block = io.read(size)
        if not block then
            io.close()
            break
        end
        io.write(block)
    end
else
    dofile(worldpath.."/goldgem_settings.txt")
end


local S -- Load translation library if intllib is installed:
if intllib then
    S = intllib.Getter(minetest.get_current_modname())
else
    S = function(s) return s end
end
gold_and_gem.gettext = S

local modpath = minetest.get_modpath("gold_and_gem")

dofile(minetest.get_modpath("gold_and_gem").."/crafts.lua")
dofile(minetest.get_modpath("gold_and_gem").."/nodes.lua")
dofile(minetest.get_modpath("gold_and_gem").."/bobblocks.lua")
dofile(minetest.get_modpath("gold_and_gem").."/colored_mese.lua")
dofile(minetest.get_modpath("gold_and_gem").."/pedestal.lua")
