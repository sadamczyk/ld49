function PlayerStateBullCharge(){
	if (CharacterWallCollision()) {
		speed = 0; // Stop player completely in all directions
		
		// Stun player
		state = PlayerStateStunned;
		alarm[2] = bull_charge_stun_duration;
		alarm[0] = 1; // End invulnerability, but still run Alarm 0 scripts
		
		// For now just mark stunned characters as teal...
		image_blend = c_teal;
		alarm[11] = alarm[2];
	}
}