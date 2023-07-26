x = oPlayer.x;
y = oPlayer.y;

if (state == states.idle || state == states.running || state == states.jumping || state = states.falling) {
	if (!place_meeting(x, y+1, oWall)) {
		if (oPlayer.vsp < 0) {
			state_set(states.jumping)
		}
		else {
			state_set(states.falling)
		}
	}
	else if (oPlayer.hsp != 0) {
		image_xscale = sign(oPlayer.hsp);
		state_set(states.running);
	}
	else {
		state_set(states.idle);
	}
	
	//attack
	if (oPlayer.key_attack) {
		state_set(states.swinging);
	}
}