/// @function
/// @param {real} dir direction of the dash
/// @description              Show a message whenever the function is called.
function PlayerStandardDash(dir){
	var _force = initialForce + 12;
	state = STATES.NORMAL;
	ResetForce();
	ApplyForce(dir, _force);
	isDashing = true;
}