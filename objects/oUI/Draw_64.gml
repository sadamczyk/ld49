/// @description Draw UI

if (room == GameOverRoom || room == WinRoom) {
	exit;	
}

// Health
draw_set_halign(fa_left);
draw_sprite(sHealthUI, 0, 32, 32);
draw_text_transformed(75, 30, oPlayer.hp, 2, 2, 0);


// Level
draw_set_halign(fa_right);
draw_text_transformed(600, 30, "Level " + string_char_at(room_get_name(room), 5), 2, 2, 0);


// Current ability
abilityMap = [
	sFireballUI,
	sFireConeUI,
	sBullUI,
	sHealUI
];

draw_sprite(abilityMap[oPlayer.ability], 0, 320, 580);
draw_text_transformed(360, 558, oPlayer.alarm[1] div 60 + 1, 2, 2, 0);

// Show the ability level only if the ability is currently displayed?
// Or have a whole row of all the abilities? Seems a bit much maybe?