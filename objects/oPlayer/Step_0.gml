// 8dir Movement
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0)
{
    var _spd = 4;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x = x + _xadd;
    y = y + _yadd;
}


// Invulnerability frame
if (alarm[0] >= 0) {
	image_alpha =  1 - ((alarm[0] % 5) / 5); // Use mod with alarm time to set alpha of sprite
}


// Game over, baby!
if (hp <= 0) {
	room_goto(GameOverRoom);
}
