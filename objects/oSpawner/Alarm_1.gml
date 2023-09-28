	var _totalEnemies = array_length(setWave[currentWaveSpawn]);
	chunkTurn = 0;
	function ArangeArrays (e, i) {
		array_push(waveChunks[chunkTurn], e);
		chunkTurn++;
		if(chunkTurn > enemyPerChunk - 1)	
			chunkTurn = 0;
	}
	function Spawn (e, i) {
		var _x = random_range(66, room_width - 66);	
		while (_x > excludedX && _x < excludedX+80){
			_x = random_range(66, room_width - 66);	
		}
		excludedX = _x;
		var _y = random_range(-60, -260);
		var inst = instance_create_layer(_x, _y,"Instances", oNormalEnemy, e);
		show_debug_message("Spawned [" + string(currentIndividualSpawn) + "]: " + string(e));
	}
	if(_totalEnemies > 3){
		if(currentIndividualSpawn == 0){
			array_foreach(currentWave, ArangeArrays);
			show_debug_message("Chunk : " + string(waveChunks));
		}
	
		array_foreach(waveChunks[currentIndividualSpawn], Spawn)

		nextSpawnDelay = waveDelay;
		if(nextSpawnDelay < minDelay){
			nextSpawnDelay = minDelay;	
		}
	}else{
		var _spawnPoint = random_range(66, room_width - 66);
		var _currentEnemy = currentWave[currentIndividualSpawn];
	
		var inst = instance_create_layer(_spawnPoint, -160,"Instances", oNormalEnemy, _currentEnemy);
		show_debug_message("Spawn: " + string(_currentEnemy));

		nextSpawnDelay = waveDelay / _totalEnemies;
		if(nextSpawnDelay < minDelay/ _totalEnemies){
			nextSpawnDelay = minDelay/ _totalEnemies;
		}
	}

	currentIndividualSpawn++;
	if(_totalEnemies > 3){
		if(currentIndividualSpawn > 2) {
			currentIndividualSpawn = 0;
			waveChunks = [[],[],[]];
			currentWaveSpawn++;
		}
	}else{
		if(currentIndividualSpawn > _totalEnemies-1) {
			currentIndividualSpawn = 0;
			waveChunks = [[],[],[]];
			currentWaveSpawn++;
		}
	}


	if(currentWaveSpawn >= waveLength-1){
		currentWaveSpawn = 0;
		waveDelay -= delayRedutionRate * (oManager.playerScore % 10)
		if(waveDelay < minDelay)
			waveDelay = minDelay
			alarm[0] = nextSpawnDelay + oManager.spawnerSpeedCompensate;
			oManager.spawnerSpeedCompensate = 0;
			//show_debug_message("Next Wave");
		}else {
			alarm[1] = nextSpawnDelay + oManager.spawnerSpeedCompensate;
			oManager.spawnerSpeedCompensate = 0;
	}

	show_debug_message("Delay: " + string(waveDelay));
