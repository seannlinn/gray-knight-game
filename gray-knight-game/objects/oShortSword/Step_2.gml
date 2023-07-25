x = oPlayer.x;
y = oPlayer.y;

if (state == states.idle || state == states.running) {
	if (oPlayer.hsp != 0) {
		image_xscale = sign(oPlayer.hsp);
		state_set(states.running);
	}
	else {
		state_set(states.idle);
	}
	
	//jump
	if (oPlayer.key_jump) {
		state_set(states.jumping);
	}
	
	//attack
	if (oPlayer.key_attack) {
		state_set(states.swinging);
	}
}