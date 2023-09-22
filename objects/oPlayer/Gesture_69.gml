if(CanUseSkill()){
	var _startX = event_data[?"viewstartposX"];
	var _startY = event_data[?"viewstartposY"];
	var _endX = event_data[?"posX"];
	var _endY = event_data[?"posY"];
	
	var _force = GetForce(currentXSpeed, currentYSpeed).force;
	dir = round(point_direction(_startX, _startY, _endX, _endY));
	PlayerStandardDash(dir, _force);
	skillUsePoints--;
	skillPoints--;
}