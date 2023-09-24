#region Choose enemy type
setWave = [];
var _viableEnemies = array_filter(enemyList,function threatLevelFilter (e,i) { return e.threatLevel <= maxThreatGauge} );

if(array_length(_viableEnemies) > 0) { //Try to choose the enemies
	for(var i = 0; i <= waveLength; i++){
		currentThreatGauge = maxThreatGauge;
		var _waveEnemies = [];
		while(currentThreatGauge > 0){
			if(currentThreatGauge > 0) {
				var _shortTimeEnemies = array_filter(_viableEnemies,function threatLevelFilter (e,i) { return e.threatLevel <= currentThreatGauge });
				var _arrayLength = array_length(_shortTimeEnemies);
				if(_arrayLength <= 0 || array_length(_waveEnemies) >= maxEnemyPerSpawn) {
					break;
				}
				
				for (var _x = _arrayLength - 1; _x > 0; _x--) {
				    var j = irandom(_x);
				    var temp = _shortTimeEnemies[_x];
				    _shortTimeEnemies[_x] = _shortTimeEnemies[j];
				    _shortTimeEnemies[j] = temp;
				}
				
				var _choosenEnemy = undefined;
				function weightPop (e, i){
					weight += e.threatLevel;
				}
				array_foreach(_shortTimeEnemies, weightPop);
				var _randomNum = random(weight);
				for(var j = 0; j <  array_length(_shortTimeEnemies); j++){
					_randomNum -= _shortTimeEnemies[j].threatLevel;
					if(_randomNum <= 0) {
						_choosenEnemy = _shortTimeEnemies[j];
						weight = 0;
					}
				}
				
				var _randomIndex = irandom_range(0, array_length(_shortTimeEnemies) - 1);
				array_push(_waveEnemies, _choosenEnemy);
				currentThreatGauge -= _choosenEnemy.threatLevel;
				array_push(setWave, _waveEnemies);
			}
		}
	}
}
//show_debug_message(setWave);
#endregion

var _maxCalcGauge = oManager.playerScore / 7
maxThreatGauge = initialThreatGauge + _maxCalcGauge;
currentThreatGauge = maxThreatGauge;
show_debug_message("Threat Level: " + string(maxThreatGauge));
alarm[1] = 1;