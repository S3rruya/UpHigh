function scr_outDashing() {
	grvt = baseGrvt;
	switch(dir)
	{
		case 1:
		{
			if(place_free(x-2,y)){
					y-=outDashSpeedY;
					x-=outDashSpeedX;
			}
			else 
			{
				state = STATES.wall;
			}
		} break;
		case -1:
		{
			if(place_free(x+2,y)){
					y-=outDashSpeedY;
					x+=outDashSpeedX;
			}
			else 
			{
				state = STATES.wall;
			}
		} break;
	}

	part_particles_create(global.partSystem, x, y, global.ptBasic, 1);


}
