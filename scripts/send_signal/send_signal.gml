/// @desc Sends a signal to a given machine
/// @param {o_machine} machine machine to send signal to
/// @param {string} signal signal content. If this is "" then signal will not work
/// @param {obj} source source of signal

var machine = argument0
var signal = argument1
var source = argument2

if signal == "" {
	show_message("Cannot send empty signal")
	game_end()
}

machine._signal = signal
machine._signal_source = source //could use Id here to imply caller, but maybe we'll want to spoof it in the future in some hacky madness