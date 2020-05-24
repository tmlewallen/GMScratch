/// @desc draws a window at pos x,y of size h, w
/// @param {int} x x location of window
/// @param {int} y y location of window
/// @param {int} w width 
/// @param {int} h height
/// @param {color} color color

var xx = argument0
var yy = argument1
var w = argument2
var h = argument3
var c = argument4

draw_rectangle_color(xx, yy, xx+w, yy+h, c, c, c, c, false)