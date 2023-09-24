draw_set_halign(fa_center);
draw_set_font(MenuFont);

if(instance_exists(oPlayer)){
	draw_text(playerScoreX, playerScoreY, playerScore)
	
	for(var i = 0; i < oPlayer.maxHP; i++){
		draw_sprite_stretched_ext(
				s_player,
				0, 
				playerHpX + (i*(playerHpSize + playerHpOffset)) - 9,
				playerHpY - 9,
				playerHpSize+18,
				playerHpSize+18,
				c_black,
				1
		);
	}
	for(var i = 0; i < oPlayer.currentHP; i++){
		draw_sprite_stretched(
			s_player,
			0, 
			playerHpX + (i*(playerHpSize + playerHpOffset)),
			playerHpY,
			playerHpSize,
			playerHpSize
		);
	}
}

if(room == TempGameOverRoom) {
	draw_text(x-112,y-340,"Game Over");
	draw_text(x-112,y-340+112,"Score: " + string(playerScore));
	draw_text(x-112,y-340+212,"Highscore: " + string(playerHighscore));

}