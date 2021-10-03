function PlayerStateBullCharge(){
	if (CharacterWallCollision()) {
		speed = 0; // Stop player completely in all directions
		
		// Stun player
		state = PlayerStateStunned;
		alarm[2] = 2 * FRAME_RATE;
		alarm[0] = 1; // End invulnerability, but still run Alarm 0 scripts
	}
}