if(!object_exists(manager)) instance_destroy();

y-=currentGravity;

if(object_exists(player)) {
	if(player.isJumping){
		if(distance_to_object(player) <= distanceToDoubleScore) {
			player.closeKillStreak++;
			manager.playerScore += scorePoints + (1*player.closeKillStreak);
			show_debug_message(manager.playerScore);
			instance_destroy();
		}
		if(distance_to_object(player) <= distanceToScore) {
			player.closeKillStreak = 0;
			manager.playerScore += scorePoints;
			show_debug_message(manager.playerScore);
			instance_destroy();
		}
	}
}