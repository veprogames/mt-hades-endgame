local S = minetest.get_translator("hades_endgame")

minetest.register_craftitem("hades_endgame:onyx", {
	description = S("Onyx"),
	inventory_image = "hades_endgame_onyx.png",
})

minetest.register_craft({
    type = "shapeless",
	output = "hades_endgame:onyx",
	recipe = {"hades_core:diamond", "hades_core:diamond"}
})

minetest.register_craft({
	output = "hades_core:diamond 2",
	recipe = {{"hades_endgame:onyx"}}
})


minetest.register_craft({
	output = "hades_endgame:onyxblock",
	recipe = {
        {"hades_endgame:onyx", "hades_endgame:onyx", "hades_endgame:onyx"},
        {"hades_endgame:onyx", "hades_endgame:onyx", "hades_endgame:onyx"},
        {"hades_endgame:onyx", "hades_endgame:onyx", "hades_endgame:onyx"}
    }
})

minetest.register_craft({
	output = "hades_endgame:onyx 9",
	recipe = {{"hades_endgame:onyxblock"}}
})