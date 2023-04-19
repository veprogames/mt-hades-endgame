local S = minetest.get_translator("hades_endgame")

local function is_protected(username, pos)
    return minetest.is_protected(pos, username) and not minetest.check_player_privs(username, "protection_bypass")
end

minetest.register_tool("hades_endgame:staff_venus", {
    description = S("Staff of Venus"),
    _tt_help = S("Turns Volanic Ash into Dirt (3D)"),
    inventory_image = "hades_endgame_staff_venus.png",
    wield_image = "hades_endgame_staff_venus.png",
    stack_max = 1,
    on_use = function (itemstack, player, pointed_thing)
        local pt = pointed_thing

        if not pt or pt.type ~= "node" then
            return
        end

        local u = pt.under
        local converted = 0
        local username = player:get_player_name()

        local dirt_positions = minetest.find_nodes_in_area(
            {x = u.x - 3, y = u.y - 3, z = u.z - 3},
            {x = u.x + 3, y = u.y + 3, z = u.z + 3}, {"hades_core:ash"})

        for i = 1, #dirt_positions do
            local pos = dirt_positions[i]
            if not is_protected(username, pos) then
                minetest.swap_node(pos, {name = "hades_core:dirt"})
                converted = converted + 1
            else
                minetest.record_protection_violation(pos, username)
            end
        end

        if not minetest.is_creative_enabled(username) then
            itemstack:add_wear(converted * 42)
        end

        return itemstack
    end
})

minetest.register_craft({
    output = "hades_endgame:staff_venus",
    recipe = {
        {"hades_core:emerald_block", "hades_endgame:onyxblock", "hades_core:emerald_block"},
        {"hades_endgame:onyxblock", "hades_gaia:staffgaia", "hades_endgame:onyxblock"},
        {"hades_core:junglegrass", "hades_endgame:onyxblock", "hades_core:junglegrass"}
    }
})