game_player_instance = noone;
screen_is_on = true;
player_score = 0;
enemy_spawn_timer = 120;
spawn_enemy = true;
enemy_spawn_speed_score_trigger = 100;
off_screen = instance_create_layer(x, y, "TV_GUI", obj_off_screen);
message_frequency_mod = 1;
difficulty_score_thresh = 100;

play_bounds = [bbox_left + 10, bbox_top + 10, bbox_right - 10, bbox_bottom - 50];