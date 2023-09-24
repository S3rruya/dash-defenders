enum GAME_STATES {
	PAUSED,
	PLAY
}

gameState = GAME_STATES.PLAY;

playerScore = 0;
playerHighscore = playerScore;
playerScoreX = room_width/2 - font_get_size(MenuFont);
playerScoreY = font_get_size(MenuFont);


playerHpX = 32;
playerHpY = 32;
playerHpSize = 64;
playerHpOffset = 32;

