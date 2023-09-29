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

initialForce = 28;
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

state = STATES.NORMAL;