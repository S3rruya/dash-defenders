show_debug_message(image_index);

if(image_index >= 1 && setSpeed){
	oManager.gameSpeed = 0.05;
	image_speed = 0;
	setSpeed = false;
	alarm[0] = 10;
}

if(image_index+image_speed >= image_number){
	instance_destroy();
}

