/// @desc puts a key, var on the machine variable stash
/// @param {o_machine} machine machine
/// @param {string} key variable name

var machine = argument0
var key = argument1

var map = machine._var
ds_map_delete(map, key)
