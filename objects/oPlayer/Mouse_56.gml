if(!isJumping){
	isJumping = true;
	ApplyGravityForceScript(false);
	ApplyForce(dir, currentForce);
}