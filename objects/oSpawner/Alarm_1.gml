var _totalEnemies = array_length(setWave[currentWaveSpawn]);

currentIndividualSpawn++;
if(currentIndividualSpawn > _totalEnemies-1) {
	currentIndividualSpawn = 0;
	currentWaveSpawn++;
}

/*
show_debug_message("Current Wave Spawn: " + string(currentWaveSpawn));
show_debug_message("Wave Length: " + string(waveLength));
show_debug_message("Current Individual Spawn: " + string(currentIndividualSpawn
*/

if(currentWaveSpawn >= waveLength-1){
	currentWaveSpawn = 0;
	waveDelay -= delayRedutionRate * (oManager.playerScore % 10)
	if(waveDelay < minDelay)
		waveDelay = minDelay
	alarm[0] = 1;
	//show_debug_message("Next Wave");
}else{
	var _spawnPoint = random_range(66, room_width - 66);
	var _currentEnemy = setWave[currentWaveSpawn][currentIndividualSpawn];
	var _nextSpawnDelay = waveDelay / _totalEnemies;
	if(_nextSpawnDelay < minDelay/2){
		_nextSpawnDelay = minDelay/2.5;	
	}
	show_debug_message(_currentEnemy);
	var inst = instance_create_layer(_spawnPoint, -160,"Instances", oNormalEnemy, _currentEnemy);
	//show_debug_message("Next Enemy");
	alarm[1] = _nextSpawnDelay;	
}