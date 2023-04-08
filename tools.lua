local S = minetest.get_translator("hades_endgame")


minetest.register_tool("hades_endgame:pick_onyx", {
	description = S("Onyx Pickaxe"),
	_tt_help = tt_pick,
	inventory_image = "hades_endgame_onyx_pick.png",
	groups = { pickaxe = 1, },
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.95, [2]=0.60, [3]=0.45}, uses=110, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = "hades_endgame:pick_onyx",
	recipe = {
		{"hades_endgame:onyx", "hades_core:prismatic_gem", "hades_endgame:onyx"},
		{"", "hades_core:pick_prism", ""},
		{"", "hades_core:prismatic_gem", ""},
	}
})