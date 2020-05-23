/// @desc checks if an object is an instance of a given parent object
/// @param {obj} obj
/// @param {obj} parent
#macro BATMAN -100 //no parents
var obj = argument0
var parent = argument1

assert_exists(obj)

var objNdx = obj.object_index

//Should traverse parent tree to get to root
do {
	if objNdx == parent return true
	objNdx = object_get_parent(objNdx)
} until (objNdx == BATMAN)

return false
	