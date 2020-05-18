/// @desc asserts state machine input is valid
/// @param {instance} instance 
/// @param {machine} machine
/// @param {object_index} expected_obj_index expected instance index

var ndx = 0; 
var instance = argument[ndx++]
var machine = argument[ndx++]
var ndx = argument[ndx++]

var msg = ""
if argument_count > ndx {
	msg = argument[argument_count-1]	
}

if msg == "" {
	assert_type(instance, ndx)
	assert_type(machine, o_machine)
} else {
	assert_type(instance, ndx, msg)
	assert_type(machine, o_machine, msg)	
}