/// @description Shoot projectiles

attack_type = irandom_range(1,2);
attack_type = 2;

switch (attack_type) {
	case 1: // Shoot projectile directly aimed at player
		with (instance_create_layer(x, y, layer, oFireballEnemy)) {
			direction = point_direction(x, y, oPlayer.x, oPlayer.y);
			show_debug_message(direction);
			speed = 3;
		}
		break;
	case 2: // Shot projectiles in x directions
		start_direction = irandom_range(0,90);
		
		for(var i = 0; i < 4; i++) {
			with (instance_create_layer(x, y, layer, oFireballEnemy)) {
				direction = other.start_direction + (90 * i);
				show_debug_message(direction);
				speed = 3;
			}
		}
		
		direction = 794; // test, remove
		break;
}



alarm[0] = random_range(3,7) * FRAME_RATE; // Rerun timer