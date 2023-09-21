if(CheckOutRight(x, currentXSpeed)){
	x = room_width - 112;
	y-=currentYSpeed - currentGravity;
	dir = 160;
	isDashing = false;
	ResetForce();
	ApplyGravityForceScript(true);
}
if(CheckOutLeft(x, currentXSpeed)){
	x = 0;
	y-=currentYSpeed - currentGravity;
	dir = 20;
	isDashing = false;
	ResetForce();
	ApplyGravityForceScript(true);
}
if(CheckOutUp(x, currentXSpeed)){
	x = 0;
	y-=currentYSpeed - currentGravity;
	dir = 20;
	isDashing = false;
	ResetForce();
	ApplyGravityForceScript(true);
}

ApplyGravity();
x+=currentXSpeed;
y-=currentYSpeed - currentGravity;