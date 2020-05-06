/// @description Insert description here
// You can write your code in this editor
_machine = state_machine_init(id)
put_state(_machine, "INIT", init_game)

start_machine(_machine, "INIT")