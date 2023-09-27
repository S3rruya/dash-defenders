waveDelay = game_get_speed(gamespeed_fps) * 2;
minDelay = game_get_speed(gamespeed_fps) * 1.3;
delayRedutionRate = 5;
waveLength = 6;

waveChunks = [[],[],[]];
chunkTurn = 0;
enemyPerChunk = 3;

currentWaveSpawn = 0;
currentIndividualSpawn = 0;

alarm[0] = waveDelay/2;

initialThreatGauge = 10;
maxThreatGauge = initialThreatGauge;
currentThreatGauge = maxThreatGauge;
maxEnemyPerSpawn = 3;
weight = 0;

enemyList = [
	{
		enemyType: "standard",
		enemyCategory: "normal",
		threatLevel: 10,
	},
	{
		enemyType: "slow",
	    enemyCategory: "normal",
		threatLevel: 15,
	},
	{
		enemyType: "fast",
		enemyCategory: "normal",
		threatLevel: 15,
	}
]
setWave = [];
