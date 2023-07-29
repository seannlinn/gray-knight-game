function PlayerStateFree(){
	if (!place_meeting(x, y+1, oWall)) {
		if (vsp < 0) {
			if (hsp != 0) {
				image_xscale = sign(hsp)
			}
			state = states.jumping;
			sprite_index = sPlayerJ;
			image_index = 0;
		}
		else {
			if (hsp != 0) {
				image_xscale = sign(hsp)
			}
			state = states.falling;
			sprite_index = sPlayerF;
			image_index = 0;
		}
	}
	else if (hsp != 0) {
		image_xscale = sign(hsp);
		state = states.walking;
		sprite_index = sPlayerW;
		image_speed = 1;	
	}
	else {
		state = states.idle;
		sprite_index = sPlayer;
		image_index = 0;
	}
}