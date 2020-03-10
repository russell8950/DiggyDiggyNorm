/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 65196661
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "100"
var chance = floor(random_range(1, 100 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A496294
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "10"
if(chance <= 10)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39385F82
	/// @DnDParent : 0A496294
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "value"
	value = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7DA37BCF
	/// @DnDParent : 0A496294
	/// @DnDArgument : "imageind" "4"
	/// @DnDArgument : "spriteind" "spr_gems"
	/// @DnDSaveInfo : "spriteind" "8befeee2-44c3-4b05-ada7-b947e1bee74d"
	sprite_index = spr_gems;
	image_index = 4;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B5493B8
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "10"
if(chance > 10)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C0D0CD5
	/// @DnDParent : 2B5493B8
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "25"
	if(chance <= 25)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4540F09B
		/// @DnDParent : 5C0D0CD5
		/// @DnDArgument : "expr" ".5"
		/// @DnDArgument : "var" "value"
		value = .5;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 15FD4622
		/// @DnDParent : 5C0D0CD5
		/// @DnDArgument : "imageind" "3"
		/// @DnDArgument : "spriteind" "spr_gems"
		/// @DnDSaveInfo : "spriteind" "8befeee2-44c3-4b05-ada7-b947e1bee74d"
		sprite_index = spr_gems;
		image_index = 3;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 253C4607
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "25"
if(chance > 25)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EC6F99D
	/// @DnDParent : 253C4607
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "45"
	if(chance <= 45)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E504818
		/// @DnDParent : 6EC6F99D
		/// @DnDArgument : "expr" ".25"
		/// @DnDArgument : "var" "value"
		value = .25;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 706BB84E
		/// @DnDParent : 6EC6F99D
		/// @DnDArgument : "imageind" "2"
		/// @DnDArgument : "spriteind" "spr_gems"
		/// @DnDSaveInfo : "spriteind" "8befeee2-44c3-4b05-ada7-b947e1bee74d"
		sprite_index = spr_gems;
		image_index = 2;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EE8FC90
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "45"
if(chance > 45)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F52289D
	/// @DnDParent : 5EE8FC90
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "70"
	if(chance <= 70)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04F10B92
		/// @DnDParent : 0F52289D
		/// @DnDArgument : "expr" ".1"
		/// @DnDArgument : "var" "value"
		value = .1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1992A1B2
		/// @DnDParent : 0F52289D
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_gems"
		/// @DnDSaveInfo : "spriteind" "8befeee2-44c3-4b05-ada7-b947e1bee74d"
		sprite_index = spr_gems;
		image_index = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F2DE58C
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "70"
if(chance > 70)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CC3EC31
	/// @DnDParent : 0F2DE58C
	/// @DnDArgument : "expr" ".05"
	/// @DnDArgument : "var" "value"
	value = .05;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6304C718
	/// @DnDParent : 0F2DE58C
	/// @DnDArgument : "spriteind" "spr_gems"
	/// @DnDSaveInfo : "spriteind" "8befeee2-44c3-4b05-ada7-b947e1bee74d"
	sprite_index = spr_gems;
	image_index = 0;
}