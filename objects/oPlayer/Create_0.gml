event_inherited();

hp = 5;
max_invul_time = FRAME_RATE;
ability = 0;
alarm[1] = 3 * FRAME_RATE;
state = PlayerStateFree;
bull_charge_radius = 16;
bull_charge_dmg = 1;
bull_charge_stun_duration = 1 * FRAME_RATE;
is_flashing = false;
heal_amount = 1;
heal_radius = 16;

// Might not randomize(), to always introduce the abilities to new players in exactly the same order?
// Also check how this behaves on restarts!
randomize(); // see docs!