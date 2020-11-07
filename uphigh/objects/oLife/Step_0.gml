switch(oController.state)
{
	case STATE.playing:
	{
		y+=fSpd;
	
		if(y>room_height[0]+20)instance_destroy();
	} break;
	
	case STATE.lost:
	{
		
	} break;
}