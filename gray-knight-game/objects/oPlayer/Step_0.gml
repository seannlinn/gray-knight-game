//get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord("J"))

//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv

grounded = place_meeting(x, y+vsp, oWall)

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

//animation

/*
if (hsp == 0)
{
sprite_index = sPlayer
}
else if (key_jump) 
{
sprite_index = sPlayerJ	
}
else if (key_attack)
{
sprite_index = sPlayerS
}
else if (place_meeting(x, y+1, oWall))
{ 
sprite_index = sPlayerR	
}
*/
if (state == states.idle || state == states.running || state == states.jumping || state == states.falling) {
	if (!place_meeting(x, y+1, oWall)) {
		if (vsp < 0 ) {
			state_set(states.jumping)
		}
		else {
			state_set(states.falling)
		}
	}
	else if (hsp != 0) {
		image_xscale = sign(hsp);
		state_set(states.running);
	}
	else {
		state_set(states.idle);
	}
	
	//jump
	if (key_jump) {
		state_set(states.jumping);
	}
	
	//attack
	if (key_attack) {
		state_set(states.swinging);
	}
}