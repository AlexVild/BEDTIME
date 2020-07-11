if (instance_exists(obj_player)) {
	if(obj_player.selected_domain == Domains.ROOM) {
		if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
			button_pressed = !button_pressed
			toggle_screen_display(button_pressed);
		}
	}
}