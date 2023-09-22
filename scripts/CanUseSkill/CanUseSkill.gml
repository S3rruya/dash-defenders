// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CanUseSkill(){
	if(isJumping && skillPoints > 0 && skillUsePoints > 0){
		return true;	
	}
	return false;
}