/// @description Shoot projectiles

attack_type = irandom_range(1,2);
if (hp < max_hp / 2) phase = 2;
show_debug_message(phase);
switch (attack_type) {
	case 1: // Shoot projectile directly aimed at player
		for (var i = 0; i < 4 * phase; i++) {
			with (instance_create_layer(x, y, layer, oFireballEnemy)) {
				direction = point_direction(x, y, oPlayer.x, oPlayer.y) + (i * 10 * other.phase);
				speed = 4 - i / other.phase;
			}
		}
		break;
	case 2: // Shot projectiles in x directions
		start_direction = irandom_range(0,90);
		
		for(var i = 0; i < 4 * phase; i++) {
			with (instance_create_layer(x, y, layer, oFireballEnemy)) {
				direction = other.start_direction + (90 * i / other.phase);
				speed = 3;
			}
		}
		break;
}



alarm[0] = random_range(2,4) * FRAME_RATE; // Rerun timer