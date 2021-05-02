///encounter()

// Exit cases
if (!instance_exists(o_noel) || !instance_exists(o_random_encounters)) exit;

if (o_random_encounters.on && !instance_exists(o_battle_transition)) {
    o_noel.state = noel_wait_state;
    o_noel.persistent = false;
    instance_create(0, 0, o_battle_transition);
}
