//if(!object_exists(manager)) instance_destroy();
ApplyGravity();
y+=currentGravity;

if(object_exists(player)) {
	if(player.isJumping){
		if(distance_to_object(player) <= distanceToDoubleScore && y > player.y) {
			player.closeKillStreak++;
			manager.playerScore += scorePoints + (1*player.closeKillStreak);
			show_debug_message(manager.playerScore);
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