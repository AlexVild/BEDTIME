if (global.game_start && step_count > 0) {
	if (selected_domain == Domains.ROOM) {
		if (mouse_check_button(mb_left)) {
			var _domain = instance_position(mouse_x, mouse_y, obj_domain_controller);
			
			if (_domain != noone) {
				selected_domain = _domain.domain;
				selected_domain_instance = _domain;
				with(selected_domain_instance) {
					is_selected = true;
				}
			} else {
				selected_domain = Domains.ROOM;
			}
		}
	} else {
		if (keyboard_check_pressed(vk_space)) {
			if (selected_domain == Domains.GAME) {
				// stuff with mouse
				window_mouse_set(window_get_width() / 2, window_get_height() / 2);
				window_set_cursor(cr_default);
			}
			
			selected_domain = Domains.ROOM;
			with(selected_domain_instance) {
				is_selected = false;	
			}
			selected_domain_instance = noone;
		}
	}
	
} else {
	if (!instance_exists(obj_start_button)) {
		instance_create_layer(room_width/2, room_height/4 * 3, "Controllers", obj_start_button);
	}
}

step_count++; // used to ignore an accidental first click after starting the game