switch(oController.state)
{
	case STATE.playing:
	{
		y-=fSpd;
	
		if(y<-32)instance_destroy();
	} break;
	
	case STATE.lost:
	{
		
	} break;
}