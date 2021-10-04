// Inherit the parent event
event_inherited();

if (alarm[2] < 0) {
	move_towards_point(oPlayer.x, oPlayer.y, 1);
	CharacterWallCollision();
}