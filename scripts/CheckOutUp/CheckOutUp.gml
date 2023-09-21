// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckOutUp(){
	var _y = argument0;
	var _speed = argument1;
	if(_y + _speed - 112 < 0){
		return true	
	}
	return false;
}