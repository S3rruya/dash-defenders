/*gravityForce = 3;
maxGravityForce = 18;
currentGravity = gravityForce;
perTimeGravityScale = 1.2;*/

distanceToScore = oPlayer.size * 5;
distanceToDoubleScore = (oPlayer.size * 5)/3;

manager = oManager;

player = oPlayer;

spawner = oSpawner;

scorePoints = 1;
scored = false;

switch(enemyType){
	case "standard":
		gravityForce = 3;
		maxGravityForce = 18;
		currentGravity = gravityForce;
		perTimeGravityScale = 1.2;
	break;
	case "slow":
		gravityForce = 3;
		maxGravityForce = 10;
		currentGravity = gravityForce;
		perTimeGravityScale = 1.2;
		image_xscale = 1.3;
		image_yscale = 1.3;
	break;
	case "fast":
		gravityForce = 3;
		maxGravityForce = 42;
		currentGravity = gravityForce;
		perTimeGravityScale = 1.2;
		image_xscale = 0.7;
		image_yscale = 0.9;
	break;
}



