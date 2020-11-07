switch(oController.state)
{
	case STATE.playing:
	{
		switch(state)
		{
			case STATES.stoped: { } break;
			case STATES.wall: { scr_grabbed(); } break;
			case STATES.falling: { scr_falling(); } break;
			case STATES.dashing: { scr_dashing(); } break;
			case STATES.outdashing: { scr_outDashing(); } break;	
			case STATES.hitted: { scr_hitted(); } break;
			case STATES.upBuff: { scr_upBuff(); } break;
		}

		with(place_meeting(x,y,oWall))
		{
			while(place_meeting(x,y,other))
			{
				if(other.x < 200)
				{
					other.x++;
				}
				else
				{
					other.x--;
				}
			}
		}
		
		if(y <= 48) y = 48;

		if(life <= 0) { oController.state = STATE.lost }
	} break;
	
	case STATE.lost:
	{
		
	}break;

}