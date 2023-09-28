waveDelay = game_get_speed(gamespeed_fps) * 2;
minDelay = game_get_speed(gamespeed_fps) * 0.8;
delayRedutionRate = 5;
waveLength = 6;

currentWaveSpawn = 0;
currentIndividualSpawn = 0;
nextSpawnDelay = waveDelay;

setWave = [];
currentWave = undefined;

waveChunks = [[],[],[]];
chunkTurn = 0;
enemyPerChunk = 3;
excludedX = 0;



alarm[0] = waveDelay/2;

initialThreatGauge = 10;
maxThreatGauge = initialThreatGauge;
currentThreatGauge = maxThreatGauge;
maxEnemyPerSpawn = 12;
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

