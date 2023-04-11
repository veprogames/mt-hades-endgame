local S = minetest.get_translator("hades_endgame")

minetest.register_craftitem("hades_endgame:sams_best_friend", {
    description = S("Sams best Friend"),
    _tt_help = S("Cheat death. Consumed on use"),
    groups = {equipment = 1},
    inventory_image = "hades_endgame_sams_best_friend.png",
    wield_image = "hades_endgame_sams_best_friend.png",
    stack_max = 1
})

minetest.register_craft({
    output = "hades_endgame:sams_best_friend",
    recipe = {
        {"hades_core:sapphire", "hades_core:goldblock", "hades_core:sapphire"},
        {"hades_core:goldblock", "hades_endgame:onyxblock", "hades_core:goldblock"},
        {"hades_core:goldblock", "hades_core:goldblock", "hades_core:goldblock"}
    }
})

minetest.register_on_player_hpchange(function(player, hp_change, reason, modifier)
    local current_hp = player:get_hp()
    local is_deadly = current_hp + hp_change <= 0
    if is_deadly then
        local inv = player:get_inventory()
        local itemstack = ItemStack("hades_endgame:sams_best_friend")
        local listname = "main" -- when using equipment, the item isn't removed from formspecs
        if inv:contains_item(listname, itemstack) then
            minetest.sound_play("hades_endgame_revive")
            minetest.chat_send_player(player:get_player_name(), minetest.colorize("#ff8000", S("You cheated Death")))
            inv:remove_item(listname, itemstack)
            return 8
        end
        return hp_change
    end
    return hp_change
end, true)