event_inherited();

truestate_create_state(GamePlayerStates.IDLE, state_game_player_idle, "Idle");
truestate_create_state(GamePlayerStates.MOVE, state_game_player_move, "Move");
truestate_create_state(GamePlayerStates.HIT, state_game_player_hit, "Hit");
truestate_create_state(GamePlayerStates.DEAD, state_game_player_dead, "Dead");

truestate_set_default(GamePlayerStates.IDLE);

hit_points = 5;
controller = noone;
mvmt_spd = 1.2;
is_controlled = false;
can_shoot = true;
shoot_freq = 15;

invincibility_timer = 120;