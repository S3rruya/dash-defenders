/// @function
/// @param {real} dir direction of the dash
/// @param {real} force of the dash
/// @description              Show a message whenever the function is called.
function PlayerStandardDash(dir, force){
	ResetForce();
	ApplyForce(dir, force);
}