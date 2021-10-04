// Point towards mouse
var dd = angle_difference(image_angle, point_direction(x, y, mouse_x, mouse_y));
image_angle -= min(10, abs(dd)) * sign(dd);
	
// Offset slightly away from player sprite
x = oPlayer.x + lengthdir_x(5, image_angle);
y = oPlayer.y + lengthdir_y(5, image_angle);

if (lifetime-- <= 0) {
	instance_destroy();
}