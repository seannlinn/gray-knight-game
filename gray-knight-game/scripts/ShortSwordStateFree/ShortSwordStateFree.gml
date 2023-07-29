// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShortSwordStateFree(){
	if (!place_meeting(x, y+1, oWall)) {
		if (oPlayer.vsp < 0) {
			if (oPlayer.hsp != 0) {
				image_xscale = sign(oPlayer.hsp)
			}
			state = states.jumping;
			sprite_index = sShortSwordJ;
			image_index = 0;
		}
		else {
			if (oPlayer.hsp != 0) {
				image_xscale = sign(oPlayer.hsp)
			}
			state = states.falling;
			sprite_index = sShortSwordF;
			image_index = 0;
		}
	}
	else if (oPlayer.hsp != 0) {
		image_xscale = sign(hsp);
		state = states.walking;
		sprite_index = sShortSwordW;
		image_speed = 1;	
	}
	else {
		state = states.idle;
		sprite_index = sShortSword;
		image_index = 0;
	}
}