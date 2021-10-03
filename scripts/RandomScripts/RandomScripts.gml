function resetInvulnerability(){
	alarm[0] = -1;
	is_flashing = false;
	image_alpha = 1;
}

function hurtPlayer() {
	if (alarm[0] < 0) {
		hp--;
		alarm[0] = max_invul_time;
		is_flashing = true;
	}
}