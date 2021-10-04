/// @description Shoot projectile

if (alarm[2] > 0) {
	alarm[0] = max(alarm[2] + 1, alarm[0]);
	exit;
}
	
with (instance_create_layer(x, y, layer, oFireballEnemy)) {
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 3;
}
alarm[0] = random_range(3,7) * FRAME_RATE;