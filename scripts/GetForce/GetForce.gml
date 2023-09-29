// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetForce(){
	var _XSpeed = argument0/oManager.gameSpeed;
	var _YSpeed = argument1/oManager.gameSpeed;
	var angle = point_direction(0, 0, _XSpeed, _YSpeed); // Calculate the angle in degrees
    var magnitude = sqrt(_XSpeed * _XSpeed + _YSpeed * _YSpeed);
    
    return { angle: angle, force: magnitude };
}