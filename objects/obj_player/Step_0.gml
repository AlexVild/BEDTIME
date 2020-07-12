if (step_count > 0) {
	var _domain = instance_position(mouse_x, mouse_y, obj_domain_controller);
	
	if (selected_domain != Domains.GAME) {
		// If not currently playing the subgame, user can click on where they want to control
		if (mouse_check_button(mb_left)) {
			if (_domain != noone) {
				if (game_instance.screen_is_on) {
					selected_domain = _domain.domain;
				}
			} else {
				selected_domain = Domains.ROOM;
			}
		} else if (keyboard_check_pressed(vk_space) && game_instance.screen_is_on) { // can press space to quickly game
			selected_domain = Domains.GAME;
		}
	} else if (selected_domain == Domains.GAME) {
		if (keyboard_check_pressed(vk_space)) { // must press space to get OUT of game
			// stuff with mouse
			global.cursor_controller.something_selected = true;
			
			selected_domain = Domains.ROOM;
		}
	}
	
	if (_domain != noone && selected_domain != _domain.domain) {
		global.cursor_controller.something_selected = true;
	}
	
	// select the instance that should be selected
	switch(selected_domain) {
		case Domains.ROOM:
			with(phone_instance) {
				is_selected = false;
			}
			with(game_instance) {
				is_selected = false;
			}
			break;
		case Domains.GAME:
			with(phone_instance) {
				is_selected = false;
			}
			with(game_instance) {
				is_selected = true;
			}
			
			global.cursor_controller.hide_cursor = true;
			break;
		case Domains.PHONE:
			with(phone_instance) {
				is_selected = true;
			}
			with(game_instance) {
				is_selected = false;
			}
			break;
	}
	
}

if (keyboard_check_pressed(ord("Y"))) {
	with(obj_door) {
		if (door_closed) {
			open_door = true;
		} else {
			close_door = true;
		}
	}
}

step_count++; // used to ignore an accidental first click after starting the game