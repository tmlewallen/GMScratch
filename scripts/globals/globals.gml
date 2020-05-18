#macro L_CONTROLLER "Controller"
#macro L_VIEW "View"
#macro L_DIALOG "Dialog"
#macro INF 100000000
#macro MOUSEX mouse_x
#macro MOUSEY mouse_y
#macro ROOM_W room_width
#macro ROOM_H room_height
#macro GRID_W 32
#macro GRID_H 18


enum CELL_VIEW {
	NEUTRAL = 0,
	MOVE = 1,
	ATTACK = 2
}

enum TURN {
	NOONE,
	PLAYER,
	ENEMY,
	NEUTRAL
}

enum PADDING {
	TOP,
	RIGHT,
	BOTTOM,
	LEFT
}