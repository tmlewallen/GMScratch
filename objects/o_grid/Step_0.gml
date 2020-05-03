/// @description Insert description here
// You can write your code in this editor
if (_update) {
	_update = false
	var groutW = (_cells_x - 1) * _grout;
	var groutY = (_cells_y - 1) * _grout;
	var trueSizeW = (_grid_w - 2 * _margin_w) - groutW;
	var trueSizeH = (_grid_h - 2 * _margin_h) - groutY;

	var tileSpriteWidth = sprite_get_width(object_get_sprite(o_cell));
	var tileSpriteHeight = sprite_get_height(object_get_sprite(o_cell));

	var slackX = (trueSizeW - (tileSpriteWidth * _cells_x)) / _cells_x;
	var slackY = (trueSizeH - (tileSpriteHeight * _cells_y)) / _cells_y;
	_cell_w = slackX + tileSpriteWidth;
	_cell_h = slackY + tileSpriteHeight;
	var tileScaleX = _cell_w / tileSpriteWidth;
	var tileScaleY = _cell_h / tileSpriteHeight;

	for (x_i = 0; x_i < _cells_x; x_i++) {
		for (y_i = 0; y_i < _cells_y; y_i++) {
			with(_cells[x_i, y_i]) {
				_x = other.x_i
				_y = other.y_i
				x = (other.x_i * other._cell_w) + other._off_w + other._margin_w + (other.x_i * other._grout);
				y = (other.y_i * other._cell_h) + other._off_h + other._margin_h + (other.y_i * other._grout);
				image_xscale = tileScaleX; // TODO Move to cell scaling logic to elsewhere
				image_yscale = tileScaleY;
			}
		}
	}
	with (i_pos) { 
		var sprite = object_get_sprite(object_index)
		var posSpriteWidth = sprite_get_width(sprite);
		var posSpriteHeight = sprite_get_height(sprite);
		image_xscale = other._cell_w / posSpriteWidth;
		image_yscale = other._cell_h / posSpriteHeight;
	}
}
with (i_pos) {
	if not in_range(other, _x, _y) continue
	var cell = get_cell_at(other, _x, _y)
	x = cell.x
	y = cell.y
}