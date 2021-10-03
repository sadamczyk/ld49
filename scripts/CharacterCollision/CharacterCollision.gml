function CharacterCollision(){
	var _collision = false;
	
	// Horizontal tiles
	if (tilemap_get_at_pixel(collisionMap, x + hspeed, y)) {
		x -= x  % TILE_SIZE;
		if (sign(hspeed) == 1) x += TILE_SIZE - 1;
		hspeed = 0;
		_collision = true;
	}
	
	// Vertical tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vspeed)) {
		y -= y  % TILE_SIZE;
		if (sign(vspeed) == 1) y += TILE_SIZE - 1;
		vspeed = 0;
		_collision = true;
	}
	
	return _collision;
}