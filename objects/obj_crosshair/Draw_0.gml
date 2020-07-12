if (game_instance.is_selected) {
	var _alpha = 1.0;
} else {
	var _alpha = 0.0;
}

draw_sprite_ext(spr_crosshair, 0, x, y, 1, 1, 0, -1, _alpha);