var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _hspd = _right - _left;
var _vspd = _down - _up;
var _run = keyboard_check(ord("X"));

if (_hspd != 0 || _vspd != 0)
{
    var _spd = 4;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd + _run * 2, _dir);
    var _yadd = lengthdir_y(_spd + _run * 2, _dir);
    x = x + _xadd
    y = y + _yadd
	if(_hspd != 0){
		image_xscale = -_hspd
	}
	if(_vspd != 0){
		image_xscale = image_xscale
	}
	
	sprite_index = spr_cornelius_walk
	if(audio_is_playing(walk) == false) {
    audio_play_sound(walk, 5, false);
}
} else {
	sprite_index = spr_cornelius_idle
	audio_stop_sound(walk)
	}
	
if _run {
	instance_create_depth(x,y,200,obj_afterimage)
}	