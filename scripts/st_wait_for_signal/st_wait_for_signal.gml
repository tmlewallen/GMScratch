/// @desc snippet
/// @param {object_id} ctx context object 
/// @param {transition} transisiton is the machine transitioning to this state
/// @param {o_machine} machine the state machine

var ctx = argument0
var transition = argument1
var machine = argument2

if machine._signal == NO_SIGNAL exit

var signal = machine._signal
var signalKey = machine._signal_var_key
var signalSource = machine._signal_source
var next = machine._post_signal

put_var(machine, signalKey, signal)
put_var(machine, V_K_SIGNAL__SOURCE, signalSource)

change_state(machine, next)