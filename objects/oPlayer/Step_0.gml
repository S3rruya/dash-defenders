	if(CheckOutRight(x, currentXSpeed)){
		x = room_width - size;
		y-=currentYSpeed - currentGravity;
		dir = mirrorDir;
		isJumping = false;
		isDashing = false;
		ResetForce();
		ApplyGravityForceScript(true);
		ResetSkillUsage();
	}
	if(CheckOutLeft(x, currentXSpeed)){
		x = 0;
		y-=currentYSpeed - currentGravity;
		dir = initialDir;
		isJumping = false;
		isDashing = false;
		ResetForce();
		ApplyGravityForceScript(true);
		ResetSkillUsage();
	}
	if(CheckOutUp(y, currentYSpeed)){
		y=0;
		x+=currentXSpeed*oManager.gameSpeed;
		dir = 360 - GetForce(currentXSpeed, currentYSpeed).angle;
		if(dir >= 260 && dir <= 280){
			if(dir >= 270){
				dir = 310;	
			}else{
				dir = 230;	
			}
		}
		isDashing = false;
		var _force = GetForce(currentXSpeed, currentYSpeed).force;
		ResetForce();
		ApplyForce(dir,_force);
	}

ApplyGravity();

x+=currentXSpeed * oManager.gameSpeed;
y+=(currentYSpeed) * oManager.gameSpeed;
var dragCoefficient = 0.05;
var dragX = -dragCoefficient * sign(currentXSpeed);
//currentXSpeed += dragX;
if(!isDashing)currentYSpeed += currentGravity;

if(!isJumping){
	if(currentYSpeed >= maxWallGravityForce){
			currentYSpeed = maxWallGravityForce;
	}
}else{
	if(currentYSpeed >= maxGravityForce){
			currentYSpeed = maxGravityForce;
	}	
}