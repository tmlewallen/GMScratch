/// @desc asserts that a type is what is expected
/// @param {instance} instance
/// @param {object_index} expectedObjectIndex
/// @param {opt string} optional_message

var ndx = 0
var instance = argument[ndx++]
var objNdx = argument[ndx++]


var msg = ""
if argument_count > ndx {
	msg = argument[argument_count-1]	
}
	
if msg == "" { 
	assert_exists(instance)
}
else {
	assert_exists(instance, msg)
}

if msg = "" {
	msg = concat("Object Index mismatch. Called in ", string(id))	
}

assert(instance.object_index == objNdx, msg)
