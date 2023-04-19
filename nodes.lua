local S = minetest.get_translator("hades_endgame")

minetest.register_node("hades_endgame:stone_with_onyx", {
	description = S("Onyx Ore"),
	tiles = {"default_stone.png^hades_endgame_mineral_onyx.png"},
	is_ground_content = true,
	groups = {cracky=1, porous=1, ore=1},
	drop = "hades_endgame:onyx",
	sounds = hades_sounds.node_sound_stone_defaults(),
})

minetest.register_node("hades_endgame:onyxblock", {
	description = S("Onyx Block"),
	tiles = {"hades_endgame_onyx_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=3},
	sounds = hades_sounds.node_sound_stone_defaults(),
})