selected_domain = Domains.GAME;
selected_domain_instance = noone;

global.game_over = false;

game_instance = instance_create_layer(206, 140, "TV_1", obj_game_controller);
with (game_instance) {
	player_instance = other.id;	
}

phone_instance = instance_create_layer(48, 140, "Phone_1", obj_phone_controller);
with (phone_instance) {
	player_instance = other.id;
}

step_count = 0;