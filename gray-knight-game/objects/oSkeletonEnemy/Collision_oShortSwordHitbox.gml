hp -= 1

if (oPlayer.image_xscale == 1) {
	vsp -= 0.3
	hsp += 2
}
if (oPlayer.image_xscale == -1) {
	vsp -= 0.3
	hsp -= 2
}

if (hp <= 0) {
	instance_destroy();
}

