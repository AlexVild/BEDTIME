if (argument0 == step) {
	if (state_new) {
		damage_actor();
	}
	
	if (hit_points > 0) {
		truestate_switch(EnemyStates.IDLE);
	} else {
		truestate_switch(EnemyStates.DEAD);
	}
} else if (argument0 == draw) {
	sprite_index = spr_enemy;
	draw_self_invincible();
}