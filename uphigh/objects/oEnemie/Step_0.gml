switch(oController.state)
{
	case STATE.playing:
	{
		var cont = oController;
		y+=fSpd;

		if(pointable){
			if(y > oPlayer.y){
				cont.points += 1;
				pointable = false;
			}
		}
		
		if(oPlayer.state == STATES.upBuff)
			{
				y+=fSpd*3;
				if(y > room_height/2+200){
					instance_destroy();
				}	
			}
		
		if(y>room_height[0]+20)instance_destroy();
	} break;
	
	case STATE.lost:
	{
		
	} break;
}

