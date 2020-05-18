/// @desc puts a key, var on the machine variable stash
/// @param {o_machine} machine machine
/// @param {string} key variable name
/// @param {id} value

var machine = argument0
var key = argument1
var val = argument2

clear_var(machine, key)
var map = machine._var
ds_map_add(map, key, val)
