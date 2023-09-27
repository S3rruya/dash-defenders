if(CanUseSkill()){
	var _startX = event_data[?"viewstartposX"];
	var _startY = event_data[?"viewstartposY"];
	var _endX = event_data[?"posX"];
	var _endY = event_data[?"posY"];
	
	dir = round(point_direction(_startX, _startY, _endX, _endY));
	PlayerStandardDash(dir);
	skillUsePoints--;
	//skillPoints--;
}