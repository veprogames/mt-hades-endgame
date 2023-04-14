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
		damage_groups = {fleshy=6},
	},
})

minetest.register_tool("hades_endgame:pick_void", {
	description = S("Void Pickaxe"),
	_tt_help = tt_pick,
	inventory_image = "hades_endgame_void_pick.png",
	groups = { pickaxe = 1, },
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.45, [2]=0.35, [3]=0.3}, uses=170, maxlevel=3},
		},
		damage_groups = {fleshy=7},
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

minetest.register_craft({
	output = "hades_endgame:pick_void",
	recipe = {
		{"hades_endgame:onyxblock", "hades_endgame:onyxblock", "hades_endgame:onyxblock"},
		{"", "hades_endgame:emerald_rod", ""},
		{"", "hades_endgame:emerald_rod", ""},
	}
})