/// @description Insert description here
// You can write your code in this editor
var c = draw_get_color()
var xx = x + _w
var yy = y + _h
var txtOriginX = x + _padding[PADDING.LEFT]
var txtOriginY = y + _padding[PADDING.BOTTOM]
var drawSpaceX = xx - x - _padding[PADDING.RIGHT] - _padding[PADDING.LEFT]
var drawSpaceY = yy - y - _padding[PADDING.TOP] - _padding[PADDING.BOTTOM]
var txtH = string_height(_text)
var txtW = string_width(_text)
var scale = drawSpaceY / txtH
draw_set_color(c_blue)
draw_text_transformed(txtOriginX, txtOriginY, _text, 1, scale, 0)
draw_set_color(c)