// Point towards mouse
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = point_direction(x, y, mouse_x, mouse_y);
	
// Offset slightly away from player sprite
x = oPlayer.x + lengthdir_x(20, direction);
y = oPlayer.y + lengthdir_y(20, direction);

if (lifetime-- <= 0) {
	instance_destroy();
}