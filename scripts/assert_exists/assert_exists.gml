/// @desc asserts that an instance exists. Terminates game if not
/// @param {instance} instance instance to verify existence
var ndx = 0
var i = argument[ndx++]

var msg = ""
if argument_count > ndx {
	msg = argument[argument_count - 1]
} else {
	msg = concat("Instance does not exist. Called in ", string(id))
}

assert(instance_exists(i), msg)
