hsp = 0;
vsp = 0;
grv = 0.18;
walksp = 1;
max_jumps = 1
current_jumps = 0

states = {
	idle : new State(sPlayer),
	walking : new State(sPlayerW),
	jumping : new State(sPlayerJ),
	falling : new State(sPlayerF),
	swinging : new State(sPlayerS)
}

states.swinging.StateOnEnd(states.idle);

state = states.idle