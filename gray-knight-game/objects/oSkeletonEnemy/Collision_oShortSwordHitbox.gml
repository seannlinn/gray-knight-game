
if (hp <= 0) {
	alarm[0] = 36;
}

if (hittable) {
	hp -= 1;

	if (oPlayer.image_xscale == 1) {
		vsp -= 1.5;
		hsp += 4;
	}
	if (oPlayer.image_xscale == -1) {
		vsp -= 1.5;
		hsp -= 4;
}
	state_set(states.hit);
	hittable = false;
	if (hsp != 0) {
		image_xscale = -sign(hsp);
	}
	alarm[1] = 10;
	alarm[2] = 20;
}



