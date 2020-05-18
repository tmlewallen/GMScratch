/// @desc Move to waiting state
/// @param {o_machine} machine the state machine
/// @param {string} next state to transition to after wait
/// @param {string} varKey var key to which the signal should be placed for it to be consumed

var machine = argument0
var postSignal = argument1
var signalVarKey = argument2

machine._signal = NO_SIGNAL
machine._post_signal = postSignal
machine._signal_var_key = signalVarKey

clear_var(machine, V_K_SIGNAL__SOURCE)
clear_var(machine, signalVarKey)

change_state(machine, ST_WAIT_FOR_SIGNAL)