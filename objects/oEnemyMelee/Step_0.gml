// Inherit the parent event
event_inherited();

show_debug_message(alarm[2]);
if (alarm[2] < 0) {
	move_towards_point(oPlayer.x, oPlayer.y, 1);
	CharacterWallCollision();
}