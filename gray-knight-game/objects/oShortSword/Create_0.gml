states = {
	idle : new State(sShortSword),
	running : new State(sShortSwordR),
	jumping : new State(sShortSwordJ),
	falling : new State(sShortSwordF),
	swinging : new State(sShortSwordS)
}


states.swinging.StateOnEnd(states.idle);

state = states.idle