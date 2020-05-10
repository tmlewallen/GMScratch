/// @description Insert description here
// You can write your co
singleton()
show_debug_overlay(true)

_machine = state_machine_init(id)
put_state(_machine, "INIT", st_init_main)

start_machine(_machine, "INIT")