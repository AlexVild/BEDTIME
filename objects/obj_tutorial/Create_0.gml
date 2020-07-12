pages = [spr_tut_1, spr_tut_2, spr_tut_3, spr_tut_4];
page_num = 0;

instance_create_depth(288, 16, depth - 1, obj_tut_prev_page_button);
instance_create_depth(288, 16, depth - 1, obj_tut_next_page_button);
instance_create_depth(312, 14, depth - 1, obj_tut_end_button);

with(obj_tutorial_button) {
	tutorial_instance = other.id;	
}