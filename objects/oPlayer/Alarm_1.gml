/// @description Ability timer

// Random "unstable" abilities
ability = 3;
switch(ability) {
	// These could also only be unlocked after getting enough powerups/beating enough levels?
	case 0: // Shoot projectile
		with (instance_create_layer(x, y, layer, oFireball)) {
			direction = point_direction(x, y, mouse_x, mouse_y);
			speed = 5;
		}
		break;
	case 1: // Breathe fire cone
		with (instance_create_layer(x, y, layer, oFireCone)) {
			// ...
		}
		break;
	case 2: // Bull charge large distance / until wall? -> stun self if no enemy hit?
		direction = point_direction(x, y, mouse_x, mouse_y);
		speed = 10;
		is_bull_charging = true;
		
		break;
	case 3: // Heal target under mousepointer, enemies too!
		var _list = ds_list_create();
		var _num = instance_position_list(mouse_x, mouse_y, oCharacter, _list, false);
		
		for (var i = 0; i < _num; ++i) {
			var obj = _list[| i];
			obj.hp += 1;
		}
		ds_list_destroy(_list);
		break;
	/*
	More ideas if enough time:
	// Change terrain/tile under mouse? Make hole or smth like that?
	// ...
	case 4: // 
		break;
	case 5: //
		break;
	*/
}

ability = irandom_range(0, 5); // Set next ability
alarm[1] = irandom_range(1, 4) * 60; // Reset the timer