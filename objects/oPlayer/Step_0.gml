// Invulnerability frame animation after getting hit
if (alarm[0] >= 0 && is_flashing) {
	image_alpha =  1 - ((alarm[0] % 5) / 5); // Use mod with alarm time to set alpha of sprite
}


// Game over, baby!
if (hp <= 0) {
	room_goto(GameOverRoom);
}

script_execute(state);