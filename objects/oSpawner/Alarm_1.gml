var _spawnPoint = random_range(66, room_width - 66);

var _totalEnemies = array_length(setWave[currentWaveSpawn]);
var _currentEnemy = setWave[currentWaveSpawn][currentIndividualSpawn];
var _nextSpawnDelay = waveDelay / _totalEnemies;



currentIndividualSpawn++;
if(currentIndividualSpawn > _totalEnemies) {
	currentIndividualSpawn = 0;
	currentWaveSpawn++;
}

if(currentWaveSpawn > waveLength){
	currentWaveSpawn = 0;
	waveDelay -= delayRedutionRate * (oManager.playerScore % 12)
	alarm[0] = waveDelay;
}else{
	alarm[1] = _nextSpawnDelay;	
}

var inst = instance_create_layer(_spawnPoint, -112,"Instances", oNormalEnemy, {
	enemyType : _currentEnemy.enemyType,
});
