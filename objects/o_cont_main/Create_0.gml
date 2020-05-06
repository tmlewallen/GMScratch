/// @description Insert description here
// You can write your co
singleton()
show_debug_overlay(true)

_machine = state_machine_init(id)
put_state(_machine, "INIT", init_main)
put_state(_machine, "NOOP", noop_state)
start_machine(_machine, "INIT")