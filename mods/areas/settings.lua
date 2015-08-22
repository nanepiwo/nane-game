local world_path = minetest.get_worldpath()

areas.config = {}

local function setting(tp, name, default)
	local full_name = "areas."..name
	local value
	if tp == "boolean" then
		value = minetest.setting_getbool(full_name)
	elseif tp == "string" then
		value = minetest.setting_get(full_name)
	elseif tp == "position" then
		value = minetest.setting_get_pos(full_name)
	elseif tp == "number" then
		value = tonumber(minetest.setting_get(full_name))
	else
		error("Invalid setting type!")
	end
	if value == nil then
		value = default
	end
	areas.config[name] = value
end

--------------
-- Settings --
--------------

setting("string", "filename", world_path.."/areas.dat")

-- Allow players with a privilege create their own areas
-- within the maximum size and number.
setting("boolean",  "self_protection", true)
setting("string",   "self_protection_privilege", "interact")
setting("position", "self_protection_max_size",      {x=100,  y=100, z=100,})
setting("number",   "self_protection_max_areas",      40)
-- For players with the areas_high_limit privilege.
setting("position", "self_protection_max_size_high", {x=250, y=250, z=250})
setting("number",   "self_protection_max_areas_high", 100)

-- legacy_table (owner_defs) compatibility.  Untested and has known issues.
setting("boolean", "legacy_table", false)

