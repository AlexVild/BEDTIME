messages = ds_list_create();

phone_instance = noone;

possible_senders = [
	"BRO",
	"SAM",
	"TIM",
	"ATT",
	"MODANG",
	"WORK",
	"LOVER",
	"GRANDMA",
]

possible_messages = ds_map_create();
possible_messages[? possible_senders[0]] = "DADDY'S COMIN!!!";
possible_messages[? possible_senders[1]] = "I'M BORED";
possible_messages[? possible_senders[2]] = "DUDE WHAT'S GOOD??";
possible_messages[? possible_senders[3]] = "YOUR SERVICE PLAN IS LOOKIN GOOD!";
possible_messages[? possible_senders[4]] = "YOUR ACCOUNT HAS BEEN COMPROMISED!";
possible_messages[? possible_senders[5]] = "THAT DOES IT. YOU'RE FIRED!";
possible_messages[? possible_senders[6]] = "XOXOXOXO";
possible_messages[? possible_senders[7]] = "XOXOXOXO";

message_interval = 60 * 10;
message_variance = 60 * irandom_range(0, 10);

last_message_indices = ds_list_create();

alarm[0] = message_interval + message_variance;