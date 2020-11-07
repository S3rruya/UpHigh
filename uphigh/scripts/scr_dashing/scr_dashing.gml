function scr_dashing() {
	grvt = baseGrvt;
	switch(dir)
	{
		case 1:
		{
			if(place_free(x+16,y)){
					y-=dashSpeedY;
					x+=dashSpeedX;
			}
			else 
			{
				dir = dir * -1;
				state = STATES.wall;
			}
		} break;
		case -1:
		{
			if(place_free(x-16,y)){
					y-=dashSpeedY;
					x-=dashSpeedX;
			}
			else 
			{
				dir = dir * -1;
				state = STATES.wall;
			}
		} break;
	}

	part_particles_create(global.partSystem, x, y, global.ptBasic, 1);


}
