size = sprite_width;

isJumping = false;

x = 0;
y = room_height/2.3;

initialHP = 3;
maxHP = initialHP;
currentHP = maxHP;

gravityForce = 3;
maxGravityForce = 22;
currentGravity = 0;
perTimeGravityScale = 1.2;

initialDir = 45;
mirrorDir = 135;
dir = initialDir;

initialForce = 26;
currentForce = initialForce;

currentXSpeed = 0;
currentYSpeed = 0;

initialSkillPoints = 5;
maxSkillPoints = initialSkillPoints;
skillPoints = initialSkillPoints;

initialSkillUsePoints = 1;
maxSkillUsePoints = initialSkillUsePoints;
skillUsePoints = initialSkillUsePoints;

closeKillStreak = 0;

gesture_flick_speed(1.0);

enum SKILLS {
	DASH
}

enum STATES {
	NORMAL,
	HITINVUNERABLE
}