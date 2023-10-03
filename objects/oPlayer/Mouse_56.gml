if(!isJumping){
	isJumping = true;
	gravityForce = 0.2;
	ApplyGravityForceScript(false);
	ApplyForce(dir, currentForce);
}