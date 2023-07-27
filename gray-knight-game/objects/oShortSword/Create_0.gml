states = {
	idle : new State(sShortSword),
	walking : new State(sShortSwordW),
	jumping : new State(sShortSwordJ),
	falling : new State(sShortSwordF),
	swinging : new State(sShortSwordS)
}


states.swinging.StateOnEnd(states.idle);

state = states.idle