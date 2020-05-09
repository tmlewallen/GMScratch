/// @desc gets a value from the machine stash
/// @param {o_machine} machine machine
/// @param {string} key variable name

var machine = argument0
var key = argument1

var map = machine._var
return ds_map_find_value(map, key)
