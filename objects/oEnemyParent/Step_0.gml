//if(!object_exists(manager)) instance_destroy();
ApplyGravity();
y+=currentGravity * manager.gameSpeed;

if(object_exists(player)) {
	if(player.isJumping){
		if(distance_to_object(player) <= distanceToDoubleScore && y > player.y + player.size + 2) {
			player.closeKillStreak++;
			manager.playerScore += scorePoints + (1*player.closeKillStreak);
			show_debug_message(manager.playerScore);
			with(player){
				skillUsePoints++;
				var _angle = GetForce(currentXSpeed, currentYSpeed).angle;
				var _force = GetForce(currentXSpeed, currentYSpeed).force;
				ResetForce();
				ApplyForce(_angle, _force);
				comboHit = true;
				instance_create_layer(other.x+(other.size/2),other.y-other.size,"effects",oHitEffect);
			}
			instance_destroy();
		}
		if(distance_to_object(player) > distanceToScore && !scored && y > player.y + (player.size*1.5)){
			player.closeKillStreak = 0;
			manager.playerScore += scorePoints;
			scored = true;
			show_debug_message(manager.playerScore);
		}
	}
}