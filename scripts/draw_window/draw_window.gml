/// @desc draws a window at pos x,y of size h, w
/// @param {int} x x location of window
/// @param {int} y y location of window
/// @param {int} w width 
/// @param {int} h height

var xx = argument0
var yy = argument1
var w = argument2
var h = argument3

draw_rectangle(xx, yy, xx + w, yy + h, false)