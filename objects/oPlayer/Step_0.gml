if(CheckOutRight(x, currentXSpeed)){
	x = room_width - size;
	y-=currentYSpeed - currentGravity;
	dir = mirrorDir;
	isJumping = false;
	ResetForce();
	ApplyGravityForceScript(true);
	ResetSkillUsage();
}
if(CheckOutLeft(x, currentXSpeed)){
	x = 0;
	y-=currentYSpeed - currentGravity;
	dir = initialDir;
	isJumping = false;
	ResetForce();
	ApplyGravityForceScript(true);
	ResetSkillUsage();
}
if(CheckOutUp(y, currentYSpeed)){
	y=0;
	x+=currentXSpeed;
	dir = 360 - GetForce(currentXSpeed, currentYSpeed).angle;
	if(dir >= 260 && dir <= 280){
		if(dir >= 270){
			dir = 290;	
		}else{
			dir = 250;	
		}
	}
	show_debug_message(GetForce(currentXSpeed, currentYSpeed).angle);
	var _force = GetForce(currentXSpeed, currentYSpeed).force;
	ResetForce();
	ApplyForce(dir,_force);
}

ApplyGravity();
x+=currentXSpeed;
y-=currentYSpeed - currentGravity;