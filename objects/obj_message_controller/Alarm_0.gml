/// @desc message received/dad spawning
if (!instance_exists(obj_dad)) {
	var _sender_len = array_length_1d(possible_senders);

	do {
		var _i;
	
		// prevent back to back daddying
		if (!ds_list_empty(last_message_indices)) {
			_i = irandom_range(0, _sender_len - 1);
		} else {
			_i = irandom_range(1, _sender_len - 1);
		}
	
		var _unique_message = ds_list_find_index(last_message_indices, _i) == -1;
	} until(_unique_message);

	if (!global.game_over) {
		ds_list_add(last_message_indices, _i);
		if (_i == 0) {
			alarm[1] = dad_coming_up_time;
			ds_list_clear(last_message_indices);
		}
	
		ds_list_add(messages, possible_messages[? possible_senders[_i]]);
		alarm[0] = message_interval + message_variance;
	}
}