///battle_attack_state()
battle_set_sprite(ATTACK, 0);

// Hit
if (animation_hit_frame(1)){
    var foe = instance_place(x+16*image_xscale, y, o_battle_unit);
        if (foe) {
            deal_damage(id, foe, chance(stats_object.stats[? "critical"]/100), 1);
            set_hitflash(foe, room_speed/2);
            foe.state = battle_hit_state;
    }
}

// Return
if (animation_end()){
     state = battle_return_state;
}
