isJumping = false;

x = 0;
y = room_height/2.3;

gravityForce = 3;
maxGravityForce = 22;
currentGravity = 0;
perTimeGravityScale = 1.2;

initialDir = 20;
mirrorDir = 160
dir = initialDir;

currentXSpeed = 0;
currentYSpeed = 0;

initialSkillPoints = 5;
maxSkillPoints = initialSkillPoints;
skillPoints = initialSkillPoints;

initialSkillUsePoints = 1;
maxSkillUsePoints = initialSkillUsePoints;
skillUsePoints = initialSkillUsePoints;

gesture_flick_speed(1.0);

enum SKILLS {
	DASH	
}