hsp = 0;
vsp = 0;
grv = 0.18;
walksp = 1;
hp = 3;
flash = 0;
hittable = true;

states = {
	idle : new State(sSkeletonEnemy),
	walking : new State(sSkeletonEnemyW),
	dead : new State(sSkeletonEnemyD),
	hit: new State(sSkeletonEnemyH)
}

states.hit.StateOnEnd = states.idle
state = states.idle

