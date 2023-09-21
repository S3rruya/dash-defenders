if(CheckOutRight(x, currentXSpeed)){
	x = room_width - 112;
	y-=currentYSpeed - currentGravity;
	dir = 160;
	isDashing = false;
	ResetForce();
	ApplyGravityScript(true);
}
if(CheckOutLeft(x, currentXSpeed)){
	x = 0;
	y-=currentYSpeed - currentGravity;
	dir = 20;
	isDashing = false;
	ResetForce();
	ApplyGravityScript(true);
}

x+=currentXSpeed;
y-=currentYSpeed - currentGravity;