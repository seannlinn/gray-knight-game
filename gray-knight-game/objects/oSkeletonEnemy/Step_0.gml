//calculate movement

vsp = vsp + grv

//horizontal collision
if (place_meeting(x+hsp, y, oWall)) {
	while (!place_meeting(x+sign(hsp), y, oWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//vertical collision
if (place_meeting(x, y+vsp, oWall)) {
	while (!place_meeting(x, y+sign(vsp), oWall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//states

if (state == states.dead) {
	hittable = false;
	alarm[0] = 36;
}

else if (state == states.idle || state == states.walking) {
	if (hsp != 0) {
		image_xscale = sign(hsp);
		state_set(states.walking);
	}
	else {
		state_set(states.idle);
	}
}

hsp = 0

