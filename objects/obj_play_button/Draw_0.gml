if (position_meeting(mouse_x, mouse_y, id)) {
	selected = true;
	sprite_index = spr_play_button_select;
} else {
	selected = false;
	sprite_index = spr_play_button_deselect;
}

draw_self();