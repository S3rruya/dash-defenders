waveDelay = game_get_speed(gamespeed_fps) * 1.5;
minDelay = game_get_speed(gamespeed_fps) * 0.33;
delayRedutionRate = 5;
waveLength = 6;

currentWaveSpawn = 0;
currentIndividualSpawn = 0;

alarm[0] = waveDelay;

initialThreatGauge = 10;
maxThreatGauge = initialThreatGauge;
currentThreatGauge = maxThreatGauge;
maxEnemyPerSpawn = 3;

enemyList = [
	{
		enemyType: "standard",
		threatLevel: 10,
	},
	{
		enemyType: "slow",
		threatLevel: 15,
	},
	{
		enemyType: "fast",
		threatLevel: 15,
	}
]
setWave = [];
