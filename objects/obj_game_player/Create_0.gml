event_inherited();

truestate_create_state(GamePlayerStates.IDLE, state_game_player_idle, "Idle");
truestate_create_state(GamePlayerStates.MOVE, state_game_player_move, "Move");

truestate_set_default(GamePlayerStates.IDLE);

hit_points = 5;
controller = noone;