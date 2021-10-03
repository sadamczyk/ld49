/// @description Movement

movement_type = irandom_range(1,2);
switch (movement_type) {
	case 1: // Move towards player
		move_towards_point(oPlayer.x, oPlayer.y, 1);
		
		break;
	case 2: // Move to random point on map
		direction = point_direction(x, y, irandom_range(0, ROOM_SIZE), irandom_range(0, ROOM_SIZE));
		speed = 1.5;
		break;
}

alarm[1] = random_range(2,5) * FRAME_RATE; // Rerun timer