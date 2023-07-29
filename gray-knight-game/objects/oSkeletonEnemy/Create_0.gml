hsp = 0;
vsp = 0;
grv = 0.18;
walksp = 1;
hp = 20;
flash = 0;

states = {
	idle : new State(sSkeletonEnemy),
	walking : new State(sSkeletonEnemyW),
	dead : new State(sSkeletonEnemyD)
}

state = states.idle

