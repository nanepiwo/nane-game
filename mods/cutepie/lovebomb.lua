--Love Bomb created by Napiophelios


   local MOD_NAME = minetest.get_current_modname()
   local MOD_PATH = minetest.get_modpath(MOD_NAME)
   local Vec3 = dofile(MOD_PATH.."/lib/Vec3_1-0.lua")

lovebomb = {}

minetest.register_craftitem('cutepie:lovebomb', {
	description = 'Love Bomb',
	inventory_image = 'heart.png',
on_use = minetest.chat_send_all("SOMEBODY...tried using a lovebomb....")
})
