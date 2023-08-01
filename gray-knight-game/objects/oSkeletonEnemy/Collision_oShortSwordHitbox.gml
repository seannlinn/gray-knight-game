hp -= 1;

if (oPlayer.image_xscale == 1) {
	vsp -= 0.3;
	hsp += 2;
}
if (oPlayer.image_xscale == -1) {
	vsp -= 0.3;
	hsp -= 2;
}

if (hp <= 0) {
	state_set(states.dead);
	alarm[0] = 30;
}
else {
	state_set(states.hit);
	if (hsp != 0) {
		image_xscale = -sign(hsp);
	}
	alarm[1] = 10;
}



