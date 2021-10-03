if (hp <= 0) {
	instance_destroy();
	
	if (!instance_exists(oEnemy)) {
		room_goto_next();	
	}
}

