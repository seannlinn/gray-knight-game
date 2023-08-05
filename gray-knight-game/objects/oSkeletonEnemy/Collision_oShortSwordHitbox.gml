

if (hp <= 0) {
	state_set(states.dead);
	image_speed = 1;
}
else if (hittable) {
	hp -= 1;

	if (oPlayer.image_xscale == 1) {
		vsp -= 1;
		hsp += 4;
	}
	if (oPlayer.image_xscale == -1) {
		vsp -= 1;
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



