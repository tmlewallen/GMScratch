/// @desc returns the input registry

var reg = instance_find(o_input_registry, 0)
if reg == noone {
	show_message("No Input Registry Found")
	game_end()
}
return reg