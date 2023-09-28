if(state == STATES.HITINVUNERABLE){
	/*
	blink++;
    if(blink >= 0 && blink <= game_get_speed(gamespeed_fps)/3){

    }else{
        draw_self();
        if(blink > game_get_speed(gamespeed_fps)/3) blink = 0;
    }
	*/
	draw_self();
}else{
    draw_self();
}

/*draw_circle(x+(size/2),y+(size/2),size*5,true);
draw_circle(x+(size/2),y+(size/2),(size*5)/3,true);

