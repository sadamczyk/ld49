/// @description Shoot projectile

with (instance_create_layer(x, y, layer, oFireballEnemy)) {
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 3;
}
alarm[0] = random_range(3,7) * FRAME_RATE;