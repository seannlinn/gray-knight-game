//get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_swing = keyboard_check_pressed(ord("J"))

//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv

if (current_jumps < max_jumps) && (key_jump) {
	vsp = -3
	current_jumps += 1
}

if (place_meeting(x, y+sign(vsp), oWall)) {
	current_jumps = 0
}


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

if (state == states.idle || state == states.walking || state == states.jumping || state == states.falling) {
	if (!place_meeting(x, y+1, oWall)) {
		if (vsp < 0) {
			if (hsp != 0) {
				image_xscale = sign(hsp);
			}
			state_set(states.jumping);
		}
		else {
			if (hsp != 0) {
				image_xscale = sign(hsp);
			}
			state_set(states.falling);
		}
	}
	else if (hsp != 0) {
		image_xscale = sign(hsp);
		state_set(states.walking);
	}
	else {
		state_set(states.idle);
	}
}
	//attack
if (key_swing) {
	state_set(states.swinging);
}