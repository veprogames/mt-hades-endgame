local S = minetest.get_translator("hades_endgame")

minetest.register_node("hades_endgame:grassifier", {
	description = S("Grassifier"),
    _tt_help = S("Turns nearby dirt blocks into grass blocks"),
	tiles = {"hades_endgame_grassifier.png"},
	groups = {cracky=1,level=3},
	sounds = hades_sounds.node_sound_stone_defaults(),
})

minetest.register_abm({
	label = "hades_endgame:grassify",
	nodenames = {"hades_endgame:grassifier"},
	interval = 20,
	chance = 3,
	action = function(pos, node)
        local dirt_positions = minetest.find_nodes_in_area_under_air(
            {x = pos.x - 6, y = pos.y - 6, z = pos.z - 6},
            {x = pos.x + 6, y = pos.y + 6, z = pos.z + 6},
            {"hades_core:dirt"})
        if #dirt_positions >= 1 then
            local dirt_pos = dirt_positions[math.random(1, #dirt_positions)]
            local above = {x = dirt_pos.x, y = dirt_pos.y + 1, z = dirt_pos.z}
            local above_node = minetest.get_node(above)
            if above_node.name == "air" then
                minetest.swap_node(dirt_pos, {name = "hades_core:dirt_with_grass"})
            end
        end
	end
})

minetest.register_craft({
	output = "hades_endgame:grassifier",
	recipe = {
		{"hades_endgame:eternal_water_bottle", "hades_grass:junglegrass", "hades_endgame:eternal_water_bottle"},
		{"hades_grass:junglegrass", "hades_endgame:onyxblock", "hades_grass:junglegrass"},
		{"hades_core:emerald_block", "hades_grass:junglegrass", "hades_core:emerald_block"},
	},
    replacements = {
        {"hades_endgame:eternal_water_bottle", "hades_vessels:glass_bottle"},
        {"hades_endgame:eternal_water_bottle", "hades_vessels:glass_bottle"}
    }
})