/// @description Insert description here
// You can write your code in this editor
_view_w = 1920 / 3
_view_h = 1080 / 3

_window_scale = 2

window_set_size(_view_w * _window_scale, _view_h * _window_scale);

alarm[0]=1

surface_resize(application_surface, _view_w * _window_scale, _view_h * _window_scale)
display_set_gui_size(_view_w, _view_h)