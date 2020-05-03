/// @description Insert description here
// You can write your code in this editor
var txt = string(weight) + "\nMy: " + _mpky(pos_x, pos_y)
if prev != noone {
	var px = prev.pos_x
	var py = prev.pos_y
	txt = txt + "\n Their: " + _mpky(px,py)
	if px == pos_x {
		if py < pos_y {
			txt = txt + " UP"
		}
		else if py > pos_y {
			txt = txt + " DOWN"
		}
		else {
			txt = txt + " Y ERROR"	
		}
	} else if py == pos_y {
		if px < pos_x {
			txt = txt + " LEFT"
		} 
		else if px > pos_x {
			txt = txt + " RIGHT"
		} 
		else {
			txt = txt + " X ERROR"	
		}
	}
	else {
		txt = txt + " NON ADJACENT ERROR" 
	}
}
draw_text(x,y, txt)
