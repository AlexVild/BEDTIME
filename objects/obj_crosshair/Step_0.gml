if (game_instance.is_selected) {
	var _x_left = game_instance.bbox_left;
	var _x_right = game_instance.bbox_right;
	var _y_top = game_instance.bbox_top;
	var _y_bottom = game_instance.bbox_bottom - 16;
	
	x = clamp(mouse_x, _x_left, _x_right);
	y = clamp(mouse_y, _y_top, _y_bottom);
}