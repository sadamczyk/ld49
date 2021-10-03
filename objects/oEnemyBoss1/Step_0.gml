// Inherit the parent event
event_inherited();

// Move towards player
move_towards_point(oPlayer.x, oPlayer.y, 1);
CharacterWallCollision();

// todo Move through the room in a certain pattern

// todo Shoot projectiles in 4 direction