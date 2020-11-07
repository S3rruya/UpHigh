function scr_hitted() {
	switch(dir)
	{
		case 1:
		{
			if(place_free(x-dashSpeedX,y+dashSpeedY)){
					//y+=dashSpeedY*1;
					x-=dashSpeedX*1;
			}
			else 
			{
				state = STATES.wall;
			}
		} break;
		case -1:
		{
			if(place_free(x+dashSpeedX,y+dashSpeedY)){
					//y+=dashSpeedY*1;
					x+=dashSpeedX*2;
			}
			else 
			{
				state = STATES.wall;
			}
		} break;
	}

	part_particles_create(global.partSystem, x, y, global.ptBasic, 1);


}
