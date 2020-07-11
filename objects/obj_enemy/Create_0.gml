/// @desc

// Inherit the parent event
event_inherited();

truestate_create_state(EnemyStates.IDLE, state_enemy_wait, "Idle");
truestate_create_state(EnemyStates.PURSUE, state_enemy_pursue, "Pursue");
truestate_create_state(EnemyStates.HIT, state_enemy_hit, "Hit");
truestate_create_state(EnemyStates.DEAD, state_enemy_dead, "Dead");

truestate_set_default(EnemyStates.IDLE);

pursure_time = 15; // move every x frames
mvmt_spd = 0.5;
hit_points = 3;