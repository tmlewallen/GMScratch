/// @desc Sends a signal to a given machine
/// @param {o_machine} machine machine to send signal to
/// @param {string} signal signal content. If this is "" then signal will not work
/// @param {obj} source source of signal

var machine = argument0
var signal = argument1
var source = argument2

if signal == NO_SIGNAL {
	terminate("Cannot send empty signal")
}

machine._signal = signal
//could use 'id' here (or self or whatever) to imply caller of this script as source
// that would be elegant
// but maybe we'll want to spoof it in the future in some hacky madness
machine._signal_source = source 