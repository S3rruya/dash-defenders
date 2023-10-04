size = sprite_width;

isJumping = false;
isDashing = false;

x = 0;
y = room_height/2.3;

initialHP = 3;
maxHP = initialHP;
currentHP = maxHP;

initialDir = 35;
mirrorDir = 145;
dir = initialDir;

initialForce = 30;
dashForce = 16;
currentForce = initialForce;

gravityForce = 0.2;
maxGravityForce = initialForce + dashForce + 12;
maxWallGravityForce = 20;
currentGravity = 0;
perTimeGravityScale = 1.05;

currentXSpeed = 0;
currentYSpeed = 0;

initialSkillPoints = 5;
maxSkillPoints = initialSkillPoints;
skillPoints = initialSkillPoints;

initialSkillUsePoints = 1;
maxSkillUsePoints = initialSkillUsePoints;
skillUsePoints = initialSkillUsePoints;

closeKillStreak = 0;
comboStartY = 0;
comboStartX = 0;
comboDistance = size*2;
comboHit = true;

blink = false;

gesture_flick_speed(1.0);

enum SKILLS {
	DASH
}

enum STATES {
	NORMAL,
	COMBOHIT,
	HITINVUNERABLE
}

normalStepState = function () {
	if(CheckOutRight(x, currentXSpeed)){
		x = room_width - size;
		y-=currentYSpeed;
		dir = mirrorDir;
		isJumping = false;
		isDashing = false;
		ResetForceWall();
		ApplyGravityForceScript(true);
		ResetSkillUsage();
	}
	if(CheckOutLeft(x, currentXSpeed)){
		x=0;
		y-=currentYSpeed;
		dir = initialDir;
		isJumping = false;
		isDashing = false;
		ResetForceWall();
		ApplyGravityForceScript(true);
		ResetSkillUsage();
	}
	if(CheckOutUp(y, currentYSpeed)){
		y=0;
		x+=currentXSpeed*oManager.gameSpeed;
		var _force = GetForce(currentXSpeed, currentYSpeed).force*0.9;
		dir = 360 - GetForce(currentXSpeed, currentYSpeed).angle;
		isDashing = false;
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
}
	
fallRecoverStepState = function () {
	
}
stepState = normalStepState;