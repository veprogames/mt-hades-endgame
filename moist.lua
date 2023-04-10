local S = minetest.get_translator("hades_endgame")

local conversions = {
    ["hades_core:stone"] = "hades_core:mossystone",
    ["hades_core:tuff"] = "hades_core:mossytuff",
    ["hades_core:cobble"] = "hades_core:mossycobble"
}

minetest.register_node("hades_endgame:moister", {
	description = S("Moister"),
    _tt_help = S("Turns the Stone / Tuff above into their Moss variant, quickly"),
	tiles = {"hades_endgame_moister_y.png", "hades_endgame_moister_y.png", "hades_endgame_moister_side.png"},
	is_ground_content = true,
	groups = {cracky=1,level=3},
	sounds = hades_sounds.node_sound_stone_defaults(),
})

minetest.register_craftitem("hades_endgame:eternal_water_bottle", {
    description = S("Eternal Water Bottle"),
    inventory_image = "hades_endgame_eternal_water_bottle.png",
    wield_image = "hades_endgame_eternal_water_bottle.png"
})

minetest.register_abm({
	label = "hades_endgame:moister_create_mossy_stone",
	nodenames = {"hades_endgame:moister"},
	interval = 30,
	chance = 2,
	action = function(pos, node)
        local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		local node_above = minetest.get_node(above).name
        if conversions[node_above] ~= nil then
            minetest.set_node(above, {name = conversions[node_above]})
        end
	end
})

minetest.register_craft({
    output = "hades_endgame:eternal_water_bottle",
    recipe = {
        {"", "hades_core:diamond", ""},
        {"", "hades_core:sapphire", ""},
        {"", "hades_vessels:glass_bottle", ""}
    }
})

minetest.register_craft({
    output = "hades_endgame:moister",
    recipe = {
        {"hades_core:steel_ingot", "hades_core:steel_ingot", "hades_core:steel_ingot"},
        {"hades_core:steel_ingot", "hades_core:stone", "hades_core:steel_ingot"},
        {"hades_endgame:eternal_water_bottle", "hades_endgame:eternal_water_bottle", "hades_endgame:eternal_water_bottle"}
    },
    replacements = {
        {"hades_endgame:eternal_water_bottle", "hades_vessels:glass_bottle"},
        {"hades_endgame:eternal_water_bottle", "hades_vessels:glass_bottle"},
        {"hades_endgame:eternal_water_bottle", "hades_vessels:glass_bottle"}
    }
})