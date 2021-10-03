with (other) {
	if (state != PlayerStateBullCharge()) {
		if (alarm[0] < 0) {
			hp--;
			alarm[0] = max_invul_time;
			is_flashing = true;
		}
	}
}