#region Choose enemy type
setWave = [];
var _viableEnemies = array_filter(enemyList,function threatLevelFilter (e,i) { return e.threatLevel <= maxThreatGauge} );

if(array_length(_viableEnemies) > 0) { //Try to choose the enemies
	for(var i = 0; i <= waveLength; i++){
		currentThreatGauge = maxThreatGauge;
		var _waveEnemies = [];
		while(currentThreatGauge > 0){
			var _shortTimeEnemies = array_filter(_viableEnemies,function threatLevelFilter (e,i) { return e.threatLevel <= currentThreatGauge });
			if(array_length(_shortTimeEnemies) <= 0 || array_length(_waveEnemies) >= maxEnemyPerSpawn) {
				break;
			}
			var _randomIndex = irandom_range(0, array_length(_shortTimeEnemies) - 1);
			var _choosenEnemy = _shortTimeEnemies[_randomIndex];
			array_push(_waveEnemies, _choosenEnemy);
			currentThreatGauge -= _choosenEnemy.threatLevel;
			if(currentThreatGauge <= 0) {
				array_push(setWave, _waveEnemies);
				break;
			}
		}
	}
}
show_debug_message(setWave);
#endregion

currentThreatGauge = maxThreatGauge;
alarm[1] = waveDelay;