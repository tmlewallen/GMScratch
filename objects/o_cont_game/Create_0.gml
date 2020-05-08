/// @description Insert description here
// You can write your code in this editor
_machine = state_machine_init(id)
put_state(_machine, "INIT", init_game)
put_state(_machine, "CHANGE_TURN", change_turn)
put_state(_machine, "EXECUTE_TURN", execute_turn)

start_machine(_machine, "INIT")