if(state != STATES.HITINVUNERABLE){
	instance_destroy(other);
	currentHP--;
	if(isJumping){
		dir = 360 - GetForce(currentXSpeed, currentYSpeed).angle;
		var _force = GetForce(currentXSpeed, currentYSpeed).force;
		ApplyForce(dir,_force);
	}

	if(currentHP <= 0) 
		GameOver();
}
