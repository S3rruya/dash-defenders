if(state != STATES.HITINVUNERABLE){
	currentHP--;
	state = STATES.HITINVUNERABLE;
	alarm[0] = game_get_speed(gamespeed_fps);
	dir = 360 - GetForce(currentXSpeed, currentYSpeed).angle;
	var _force = GetForce(currentXSpeed, currentYSpeed).force;
	ApplyForce(dir,_force);

	instance_destroy(other);
	if(currentHP <= 0) 
		GameOver();
}
