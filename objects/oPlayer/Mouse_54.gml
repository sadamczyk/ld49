// Breathe fire
with (instance_create_layer(x, y, layer, oFireCone)) {
	direction = point_direction(x, y, mouse_x, mouse_y);
	x = x + lengthdir_x(40, direction);
	y = y + lengthdir_y(40, direction);
	// speed = 0;
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}