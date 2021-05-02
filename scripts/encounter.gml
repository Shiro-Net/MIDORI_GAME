///encounter()
/*
    Initiates an incounter.
*/
if (!instance_exists(o_noel) || !instance_exists(o_random_encounters)) exit;

if (o_random_encounters.on) {
    o_noel.state = noel_wait_state;
    o_noel.persistent = false;
    if (!instance_exists(o_battle_transition)) {
        instance_create(0, 0, o_battle_transition);
    }
}
