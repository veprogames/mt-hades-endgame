local S = minetest.get_translator("hades_endgame")

local function grassify(pos, range, count)
    local dirt_positions = minetest.find_nodes_in_area_under_air(
        {x = pos.x - range, y = pos.y - range, z = pos.z - range},
        {x = pos.x + range, y = pos.y + range, z = pos.z + range},
        {"hades_core:dirt"})
    local available = math.min(#dirt_positions, count)
    while available > 0 do
        local idx = math.random(1, #dirt_positions)
        local dirt_pos = table.remove(dirt_positions, idx)
        local above = {x = dirt_pos.x, y = dirt_pos.y + 1, z = dirt_pos.z}
        local above_node = minetest.get_node(above)
        if above_node.name == "air" then
            minetest.swap_node(dirt_pos, {name = "hades_core:dirt_with_grass"})
        end
        available = available - 1
    end
end

minetest.register_node("hades_endgame:grassifier", {
	description = S("Grassifier"),
    _tt_help = S("Turns nearby dirt blocks into grass blocks"),
	tiles = {"hades_endgame_grassifier.png"},
	groups = {cracky=1,level=3},
	sounds = hades_sounds.node_sound_stone_defaults(),
})

minetest.register_node("hades_endgame:grassifier_2", {
	description = S("Grassifier Lv. 2"),
    _tt_help = S("Turns nearby dirt blocks into grass blocks"),
	tiles = {"hades_endgame_grassifier_2.png"},
	groups = {cracky=1,level=3},
	sounds = hades_sounds.node_sound_stone_defaults(),
})

minetest.register_node("hades_endgame:grassifier_3", {
	description = S("Grassifier Lv. 3"),
    _tt_help = S("Turns nearby dirt blocks into grass blocks"),
	tiles = {"hades_endgame_grassifier_3.png"},
	groups = {cracky=1,level=3},
	sounds = hades_sounds.node_sound_stone_defaults(),
})

minetest.register_abm({
	label = "hades_endgame:grassify",
	nodenames = {"hades_endgame:grassifier"},
	interval = 20,
	chance = 3,
	action = function (pos, node)
        grassify(pos, 6, 1)
    end
})

minetest.register_abm({
	label = "hades_endgame:grassify_2",
	nodenames = {"hades_endgame:grassifier_2"},
	interval = 20,
	chance = 1,
	action = function (pos, node)
        grassify(pos, 18, 3)
    end
})

minetest.register_abm({
	label = "hades_endgame:grassify_3",
	nodenames = {"hades_endgame:grassifier_3"},
	interval = 2,
	chance = 1,
	action = function (pos, node)
        grassify(pos, 24, 3)
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

minetest.register_craft({
	output = "hades_endgame:grassifier_2",
	recipe = {
		{"hades_endgame:grassifier", "hades_endgame:grassifier", "hades_endgame:grassifier"},
		{"hades_endgame:grassifier", "hades_endgame:grassifier", "hades_endgame:grassifier"},
		{"hades_endgame:grassifier", "hades_endgame:grassifier", "hades_endgame:grassifier"},
	},
})

minetest.register_craft({
	output = "hades_endgame:grassifier_3",
	recipe = {
		{"hades_endgame:grassifier_2", "hades_endgame:grassifier_2", "hades_endgame:grassifier_2"},
		{"hades_endgame:grassifier_2", "hades_endgame:grassifier_2", "hades_endgame:grassifier_2"},
		{"hades_endgame:grassifier_2", "hades_endgame:grassifier_2", "hades_endgame:grassifier_2"},
	},
})