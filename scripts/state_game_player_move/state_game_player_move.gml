if (argument0 == step) {
	if (!is_controlled) {
		truestate_switch(GamePlayerStates.IDLE);
	} else {
		hspd = 0;
		vspd = 0;
		
		if (keyboard_check(ord("W"))) {
			vspd = -mvmt_spd;
		}
		if (keyboard_check(ord("S"))) {
			vspd = mvmt_spd;
		}
		if (keyboard_check(ord("A"))) {
			hspd = -mvmt_spd;
		}
		if (keyboard_check(ord("D"))) {
			hspd = mvmt_spd;
		}
	
		// Diagnol movement
		if (vspd != 0 && hspd != 0) {
			var _hsign = sign(hspd);
			var _vsign = sign(vspd);
			
			hspd = round(mvmt_spd * ((sqrt(1.66)) / 1.66)) * _hsign;
			vspd = round(mvmt_spd * ((sqrt(1.66)) / 1.66)) * _vsign;
		}
	
		check_collision_and_move_xy();
		
		if (hspd == 0 && vspd == 0) {
			truestate_switch(GamePlayerStates.IDLE);
		}
		
		state_can_shoot();
	}
	
	actor_vulnerable_to(obj_enemy, GamePlayerStates.HIT);
} else if (argument0 == draw) {
	sprite_index = spr_player;
	draw_self_invincible();
}