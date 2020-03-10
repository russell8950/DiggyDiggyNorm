/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33B08ABD
/// @DnDArgument : "code" "if(keyboard_check(vk_left))$(13_10){$(13_10)	if(keyboard_check(vk_up))$(13_10)	{$(13_10)		//Character moves up and left$(13_10)		movement = Movement.diagUpLeft;$(13_10)		$(13_10)	}$(13_10)	else if(keyboard_check(vk_down))$(13_10)	{$(13_10)		//Character moves down and left$(13_10)		movement = Movement.diagDownLeft;$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character left$(13_10)		movement = Movement.left;$(13_10)	}$(13_10)}$(13_10)//Right Press checks for diagonals.$(13_10)else if(keyboard_check(vk_right))$(13_10){$(13_10)	if(keyboard_check(vk_up))$(13_10)	{$(13_10)		//Character moves up and right$(13_10)		movement = Movement.diagUpRight;$(13_10)		$(13_10)	}$(13_10)	else if(keyboard_check(vk_down))$(13_10)	{$(13_10)		//Character moves down and right$(13_10)		movement = Movement.diagDownRight;$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character moves right$(13_10)		movement = Movement.right;$(13_10)		$(13_10)	}$(13_10)}$(13_10)else if(keyboard_check(vk_up))$(13_10){$(13_10)	//Character moves up$(13_10)	movement = Movement.up;$(13_10)}$(13_10)else if(keyboard_check(vk_down))$(13_10){$(13_10)	//Character moves down$(13_10)	movement = Movement.down;$(13_10)}$(13_10)else$(13_10){$(13_10)	//Character does not move$(13_10)	movement = Movement.idle;$(13_10)}$(13_10)$(13_10)$(13_10)if(movement != Movement.idle)$(13_10){$(13_10)	if(keyboard_check(vk_shift))$(13_10)	{$(13_10)		//Character runs when you hold down the shift key. He moves twice as fast when he runs$(13_10)		speed = 8;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character is walking$(13_10)		speed = 4;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(keyboard_check(vk_space) and self.canAttack) {$(13_10)	action = Actions.attack;$(13_10)}$(13_10)else {$(13_10)	action = Actions.none;$(13_10)}$(13_10)$(13_10)//	Movement switch statement. Changes sprite and direction based on the movement state.$(13_10)switch (movement) {$(13_10)    case Movement.idle:$(13_10)      speed = 0;$(13_10)      break;$(13_10)    case Movement.left:$(13_10)      direction = 180;$(13_10)	  temp_index = spr_normRight;$(13_10)	  temp_attackIndex = spr_attackRight;$(13_10)      sprite_index = temp_index;$(13_10)	  obj_norm.image_yscale = 1;$(13_10)	  obj_norm.image_xscale = -1;$(13_10)      break;$(13_10)    case Movement.diagDownLeft:$(13_10)      direction = 225;$(13_10)	  temp_index = spr_normUpRight;$(13_10)	  temp_attackIndex = spr_attackUpRight;$(13_10)      sprite_index = temp_index;$(13_10)	  obj_norm.image_yscale = -1;$(13_10)	  obj_norm.image_xscale = -1;$(13_10)      break;$(13_10)    case Movement.diagUpLeft:$(13_10)      direction = 135;$(13_10)	  temp_index = spr_normDownRight;$(13_10)	  temp_attackIndex = spr_attackDownRight;$(13_10)      sprite_index = temp_index;$(13_10)	  obj_norm.image_yscale = -1;$(13_10)	  obj_norm.image_xscale = -1;$(13_10)      break;$(13_10)    case Movement.right:$(13_10)      direction = 0;$(13_10)	  temp_index = spr_normRight;$(13_10)	  temp_attackIndex = spr_attackRight;$(13_10)      sprite_index = temp_index;$(13_10)	  obj_norm.image_yscale = 1;$(13_10)	  obj_norm.image_xscale = 1;$(13_10)      break;$(13_10)    case Movement.diagDownRight:$(13_10)      direction = 315;$(13_10)	  temp_index = spr_normDownRight;$(13_10)	  temp_attackIndex = spr_attackDownRight;$(13_10)      sprite_index = temp_index;$(13_10)	  obj_norm.image_yscale = 1;$(13_10)	  obj_norm.image_xscale = 1;$(13_10)      break;$(13_10)    case Movement.diagUpRight:$(13_10)      direction = 45;$(13_10)	  temp_index = spr_normUpRight;$(13_10)	  temp_attackIndex = spr_attackUpRight;$(13_10)      sprite_index = temp_index;$(13_10)	  obj_norm.image_yscale = 1;$(13_10)	  obj_norm.image_xscale = 1;$(13_10)      break;$(13_10)    case Movement.up:$(13_10)      direction = 90;$(13_10)	  temp_index = spr_normUp;$(13_10)	  temp_attackIndex = spr_attackUp;$(13_10)      sprite_index = temp_index;$(13_10)	  obj_norm.image_yscale = 1;$(13_10)	  obj_norm.image_xscale = 1;$(13_10)      break;$(13_10)    case Movement.down:$(13_10)      direction = 270;$(13_10)	  temp_index = spr_normUp;$(13_10)	  temp_attackIndex = spr_attackUp;$(13_10)      sprite_index = temp_index;$(13_10)	  obj_norm.image_yscale = -1;$(13_10)	  obj_norm.image_xscale = 1;$(13_10)      break;$(13_10)}$(13_10)$(13_10)switch (action) {$(13_10)	case Actions.none:$(13_10)		sprite_index = temp_index;$(13_10)		break;$(13_10)	case Actions.attack:$(13_10)		sprite_index = temp_attackIndex;$(13_10)		instance_create_depth(x,y,obj_norm.depth,obj_pickaxe);$(13_10)		obj_norm.canAttack = false;$(13_10)		alarm_set(1, 10);$(13_10)		break;$(13_10)}"
if(keyboard_check(vk_left))
{
	if(keyboard_check(vk_up))
	{
		//Character moves up and left
		movement = Movement.diagUpLeft;
		
	}
	else if(keyboard_check(vk_down))
	{
		//Character moves down and left
		movement = Movement.diagDownLeft;
		
	}
	else
	{
		//Character left
		movement = Movement.left;
	}
}
//Right Press checks for diagonals.
else if(keyboard_check(vk_right))
{
	if(keyboard_check(vk_up))
	{
		//Character moves up and right
		movement = Movement.diagUpRight;
		
	}
	else if(keyboard_check(vk_down))
	{
		//Character moves down and right
		movement = Movement.diagDownRight;
		
	}
	else
	{
		//Character moves right
		movement = Movement.right;
		
	}
}
else if(keyboard_check(vk_up))
{
	//Character moves up
	movement = Movement.up;
}
else if(keyboard_check(vk_down))
{
	//Character moves down
	movement = Movement.down;
}
else
{
	//Character does not move
	movement = Movement.idle;
}


if(movement != Movement.idle)
{
	if(keyboard_check(vk_shift))
	{
		//Character runs when you hold down the shift key. He moves twice as fast when he runs
		speed = 8;
	}
	else
	{
		//Character is walking
		speed = 4;
	}
}

if(keyboard_check(vk_space) and self.canAttack) {
	action = Actions.attack;
}
else {
	action = Actions.none;
}

//	Movement switch statement. Changes sprite and direction based on the movement state.
switch (movement) {
    case Movement.idle:
      speed = 0;
      break;
    case Movement.left:
      direction = 180;
	  temp_index = spr_normRight;
	  temp_attackIndex = spr_attackRight;
      sprite_index = temp_index;
	  obj_norm.image_yscale = 1;
	  obj_norm.image_xscale = -1;
      break;
    case Movement.diagDownLeft:
      direction = 225;
	  temp_index = spr_normUpRight;
	  temp_attackIndex = spr_attackUpRight;
      sprite_index = temp_index;
	  obj_norm.image_yscale = -1;
	  obj_norm.image_xscale = -1;
      break;
    case Movement.diagUpLeft:
      direction = 135;
	  temp_index = spr_normDownRight;
	  temp_attackIndex = spr_attackDownRight;
      sprite_index = temp_index;
	  obj_norm.image_yscale = -1;
	  obj_norm.image_xscale = -1;
      break;
    case Movement.right:
      direction = 0;
	  temp_index = spr_normRight;
	  temp_attackIndex = spr_attackRight;
      sprite_index = temp_index;
	  obj_norm.image_yscale = 1;
	  obj_norm.image_xscale = 1;
      break;
    case Movement.diagDownRight:
      direction = 315;
	  temp_index = spr_normDownRight;
	  temp_attackIndex = spr_attackDownRight;
      sprite_index = temp_index;
	  obj_norm.image_yscale = 1;
	  obj_norm.image_xscale = 1;
      break;
    case Movement.diagUpRight:
      direction = 45;
	  temp_index = spr_normUpRight;
	  temp_attackIndex = spr_attackUpRight;
      sprite_index = temp_index;
	  obj_norm.image_yscale = 1;
	  obj_norm.image_xscale = 1;
      break;
    case Movement.up:
      direction = 90;
	  temp_index = spr_normUp;
	  temp_attackIndex = spr_attackUp;
      sprite_index = temp_index;
	  obj_norm.image_yscale = 1;
	  obj_norm.image_xscale = 1;
      break;
    case Movement.down:
      direction = 270;
	  temp_index = spr_normUp;
	  temp_attackIndex = spr_attackUp;
      sprite_index = temp_index;
	  obj_norm.image_yscale = -1;
	  obj_norm.image_xscale = 1;
      break;
}

switch (action) {
	case Actions.none:
		sprite_index = temp_index;
		break;
	case Actions.attack:
		sprite_index = temp_attackIndex;
		instance_create_depth(x,y,obj_norm.depth,obj_pickaxe);
		obj_norm.canAttack = false;
		alarm_set(1, 10);
		break;
}