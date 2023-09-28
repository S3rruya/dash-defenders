event_inherited();

switch(enemyType){
	case "standard":
		gravityForce = 3;
		maxGravityForce = 18;
		currentGravity = gravityForce;
		perTimeGravityScale = 1.2;
		size = sprite_get_width(s_enemy);
	break;
	case "slow":
		gravityForce = 3;
		maxGravityForce = 10;
		currentGravity = gravityForce;
		perTimeGravityScale = 1.2;
		image_xscale = 1.3;
		image_yscale = 1.3;
		size = sprite_get_width(s_enemy) * 1.3;
	break;
	case "fast":
		gravityForce = 3;
		maxGravityForce = 42;
		currentGravity = gravityForce;
		perTimeGravityScale = 1.2;
		image_xscale = 0.7;
		image_yscale = 0.9;
		size = sprite_get_width(s_enemy) * 0.7;
	break;
}

