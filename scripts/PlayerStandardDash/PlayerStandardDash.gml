/// @function
/// @param {real} dir direction of the dash
/// @description              Show a message whenever the function is called.
function PlayerStandardDash(dir){
	var _force = initialForce + 16;
	ResetForce();
	ApplyForce(dir, _force);
}