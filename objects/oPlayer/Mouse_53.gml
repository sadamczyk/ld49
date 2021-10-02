// Shoot fireball
with (instance_create_layer(x, y, layer, oFireball)) {
	direction = point_direction(x, y, mouse_x, mouse_y);
	speed = 5;
}