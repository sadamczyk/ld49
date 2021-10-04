function resetInvulnerability(){
	alarm[0] = -1;
	is_flashing = false;
	image_alpha = 1;
}

function hurtPlayer() {
	if (alarm[0] < 0) {
		hp--; // cause dmg based on enemy type
		alarm[0] = max_invul_time;
		is_flashing = true;
	}
}

function hurtEnemy(dmg) {
	hp -= dmg;
	alarm[11] = 0.5 * FRAME_RATE;
	image_blend = c_gray;
}