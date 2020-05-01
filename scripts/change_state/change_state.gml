/// @desc Moves from step a to step b
/// @param c Main controller
/// @param a current step
/// @param b next step

var c = argument0
var a = argument1
var b = argument2

c.active_step = b
a.active = false
b.transition = true
b.active = true