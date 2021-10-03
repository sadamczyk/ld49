if (state == PlayerStateBullCharge) {
	speed = 0;
	state = PlayerStateFree;
	alarm[0] = 1 * FRAME_RATE; // Give player short invulnerability
	is_flashing = false;
	
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, bull_charge_radius, oEnemy, false, true, _list, false);
	
	for (var i = 0; i < _num; ++i) {
		var obj = _list[| i];
		obj.hp -= bull_charge_dmg;
	}
	ds_list_destroy(_list);
}