currentHP--;

dir = 360 - GetForce(currentXSpeed, currentYSpeed).angle;
var _force = GetForce(currentXSpeed, currentYSpeed).force;
ApplyForce(dir, _force);

instance_destroy(other);
if(currentHP <= 0) 
	GameOver();