minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_endgame:stone_with_onyx",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 35*35*35,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -31000,
	y_max = -4000,
    flags = "absheight"
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_endgame:stone_with_onyx",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 24*24*24,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -31000,
	y_max = -10000,
    flags = "absheight"
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_endgame:stone_with_onyx",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 16*16*16,
	clust_num_ores = 3,
	clust_size = 4,
	y_min = -31000,
	y_max = -15000,
    flags = "absheight"
})

-- make ores also generate in essexite and basalt, which take up a lot of the underground

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:stone_with_emerald",
	wherein = {"hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 16*16*16,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -31000,
	y_max = -2500,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:stone_with_sapphire",
	wherein = {"hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 16*16*16,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -31000,
	y_max = -3500,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:stone_with_ruby",
	wherein = {"hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 16*16*16,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -31000,
	y_max = -5000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:stone_with_diamond",
	wherein = {"hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 16*16*16,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -31000,
	y_max = -7500,
    flags = "absheight",
})

-- generate ore blocks very far down

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:steelblock",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -12000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:tinblock",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -14000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:copperblock",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -14000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:mese",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -18000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:goldblock",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -19000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:emerald_block",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -20000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:sapphire_block",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -22000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:ruby_block",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -24000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_core:diamondblock",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -26000,
    flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "hades_endgame:onyxblock",
	wherein = {"hades_core:stone", "hades_core:basalt", "hades_core:essexite"},
	clust_scarcity = 20*20*20,
	clust_num_ores = 1,
	clust_size = 3,
	y_min = -31000,
	y_max = -28000,
    flags = "absheight",
})