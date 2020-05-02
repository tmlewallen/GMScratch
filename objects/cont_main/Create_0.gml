/// @description Main Controller

singleton();
show_debug_overlay(true);
left = false
up = false
right = false
down = false
space = false

left_p = false
up_p = false
right_p = false
down_p = false
space_p = false


current_step = build_state_machine()
current_step.active = true //Kick it all off


