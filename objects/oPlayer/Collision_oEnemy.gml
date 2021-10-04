if (state == PlayerStateBullCharge) {
	speed = 0;
	state = PlayerStateFree;
	alarm[0] = 1 * FRAME_RATE; // Give player short invulnerability
	is_flashing = false;
	
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, bull_charge_radius, oEnemy, false, true, _list, false);
	
	for (var i = 0; i < _num; ++i) {
		with (_list[| i]) {
			hurtEnemy(other.bull_charge_dmg);
			
			// Stun enemy
			if (self != oEnemyBoss1) {
				image_blend = c_teal;
				alarm[11] = other.bull_charge_stun_duration;
				alarm[2] = other.bull_charge_stun_duration;
				speed = 0;
			}
		}
	}
	ds_list_destroy(_list);
}