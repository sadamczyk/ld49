// 8dir Movement
var _left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var _up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var _hspd = _right - _left;
var _vspd = _down - _up;

if (!is_bull_charging) {
	if (_hspd != 0 || _vspd != 0) {
	    speed = 2;
	    direction = point_direction(0, 0, _hspd, _vspd);
		CharacterCollision();
	} else speed = 0;
} else {
	is_bull_charging = !CharacterCollision();	
}


// Invulnerability frame
if (alarm[0] >= 0) {
	image_alpha =  1 - ((alarm[0] % 5) / 5); // Use mod with alarm time to set alpha of sprite
}


// Game over, baby!
if (hp <= 0) {
	room_goto(GameOverRoom);
}
