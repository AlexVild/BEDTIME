if (argument0 == step) {
	if (state_new) {
		damage_actor();
	}
	
	if (hit_points > 0) {
		truestate_switch_previous();
	} else {
		truestate_switch(GamePlayerStates.DEAD);
	}
} else if (argument0 == draw) {
	if (invincible) {
		sprite_index = spr_player_hurt;
	} else {
		sprite_index = spr_player;
	}
	draw_self_invincible();
}