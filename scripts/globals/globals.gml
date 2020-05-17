#macro L_CONTROLLER "Controller"
#macro L_VIEW "View"
#macro INF 100000000


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