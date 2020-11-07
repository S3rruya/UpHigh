	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fontScore);
	draw_text(room_width/2-75,36,string(points));
	for(var i = 1; i < oPlayer.life+1; i++){
	draw_sprite_ext(sPlayer,1,i*76,96,0.7,0.7,0,c_white,1);
	}