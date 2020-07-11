if (!global.game_over) {
	global.game_start = false;
	global.game_over = true;

	if (instance_exists(obj_player)) {
		obj_player.domain = Domains.ROOM;
	}

	play_subgame_sound(sfx_game_over);
}