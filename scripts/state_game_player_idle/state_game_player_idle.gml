if (argument0 == step) {
	if (state_new) {
		truestate_clear_history();
	}
	
	if (is_controlled) {
		if (keyboard_check_pressed(ord("W")) ||
			keyboard_check_pressed(ord("A")) ||
			keyboard_check_pressed(ord("S")) || 
			keyboard_check_pressed(ord("D"))) {
			truestate_switch(GamePlayerStates.MOVE);
		}
		
		state_can_shoot();
	}
	
	actor_vulnerable_to(obj_enemy, GamePlayerStates.HIT);
} else if (argument0 == draw) {
	if (invincible) {
		sprite_index = spr_player_hurt;
	} else {
		sprite_index = spr_player;
	}
	
	draw_self_invincible();
}