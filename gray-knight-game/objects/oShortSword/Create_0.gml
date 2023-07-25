states = {
	idle : new State(sShortSword),
	running : new State(sShortSwordR),
	jumping : new State(sShortSwordJ),
	swinging : new State(sShortSwordS)
}

states.jumping.StateOnEnd(states.idle);
states.swinging.StateOnEnd(states.idle);

state = states.idle