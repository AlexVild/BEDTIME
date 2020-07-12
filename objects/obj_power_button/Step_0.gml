if (instance_exists(obj_player)) {
	if(obj_player.selected_domain == Domains.ROOM) {
		if (position_meeting(mouse_x, mouse_y, id)) {
			global.cursor_controller.something_selected = true;
			
			if (mouse_check_button_pressed(mb_left)) {
				button_pressed = true;
			}
		}
	}
	
	if (button_pressed) {
		if(mouse_check_button_released(mb_left)) {
			power_off = !power_off;
			toggle_screen_display(power_off);
			button_pressed = false;
		}
	}
}