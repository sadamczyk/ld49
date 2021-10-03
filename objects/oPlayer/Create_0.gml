event_inherited();

hp = 5;
max_invul_time = FRAME_RATE;
ability = 0;
alarm[1] = 3 * FRAME_RATE;
state = PlayerStateFree;
bull_charge_radius = 2;
bull_charge_dmg = 1;
is_flashing = false;

// Might not randomize(), to always introduce the abilities to new players in exactly the same order?
// Also check how this behaves on restarts!
randomize(); // see docs!