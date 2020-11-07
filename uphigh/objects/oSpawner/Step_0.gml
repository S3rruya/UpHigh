switch(oController.state)
{
	case STATE.playing:
	{
		if(oPlayer.state == STATES.upBuff) delay+=10;
		else delay++;
		if(maxDelay < minDelay) maxDelay = minDelay
		if(delay > maxDelay){
			delay = 0;
			maxDelay-=0.07*60;
			lifeChance = random(100);
			var xx = random_range(196,1244);
			var xxB = random_range(196,1244);	
			var xxU = random_range(196,1244);	
			instance_create_depth(xx,-54,-1,oEnemie);
			
			if(oPlayer.state != STATES.upBuff)
			{
				if(lifeChance <= 5+oController.points/10)
					instance_create_depth(xxB,-54,-1,oLife);	
				upBuffChance = random(100);	
				if(upBuffChance <= 3+oController.points/10)
					instance_create_depth(xxU,room_height+16,-1,oUpBuff);		
			}
			
			if(oController.points > 65)
			{
				doubleChance = random(100);
				if(doubleChance <= 40) alarm[0] = maxDelay/2;
			}
				
		
		}
		
	} break;
	
	case STATE.lost:
	{
		
	} break;
}
