if (argument0 == step) {
	if (animation_end() && state_timer > 1) {
		instance_destroy();
	}
} else if (argument0 == draw) {
	sprite_index = spr_player_death;
	draw_self();
}