x = oPlayer.x;
y = oPlayer.y;

if (state == states.idle || state == states.walking || state == states.jumping || state = states.falling) {
	if (!place_meeting(x, y+1, oWall)) {
		if (oPlayer.vsp < 0) {
			if (oPlayer.hsp != 0) {
				image_xscale = sign(oPlayer.hsp)
			}
			state_set(states.jumping)
		}
		else {
			if (oPlayer.hsp != 0) {
				image_xscale = sign(oPlayer.hsp)
			}
			state_set(states.falling)
		}
	}
	else if (oPlayer.hsp != 0) {
		image_xscale = sign(oPlayer.hsp);
		state_set(states.walking);
	}
	else {
		state_set(states.idle);
	}
	
	//attack
	if (oPlayer.key_swing) {
		instance_create_layer(x, y, "Weapon", oShortSwordHitbox)
		state_set(states.swinging);
	}
}