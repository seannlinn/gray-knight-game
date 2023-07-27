hsp = 0;
vsp = 0;
grv = 0.18;
walksp = 1;
hp = 2;
flash = 0;

states = {
	idle : new State(sSkeletonEnemy),
	walking : new State(sSkeletonEnemyW)
}

state = states.idle
