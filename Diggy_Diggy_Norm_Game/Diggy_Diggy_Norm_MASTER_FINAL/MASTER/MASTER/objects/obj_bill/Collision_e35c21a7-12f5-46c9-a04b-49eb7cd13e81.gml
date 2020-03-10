/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 797FC53B
/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
/// @DnDArgument : "var" "invincible"
with(obj_norm) var l797FC53B_0 = invincible == 0;
if(l797FC53B_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BE5EB55
	/// @DnDParent : 797FC53B
	/// @DnDArgument : "var" "invinc"
	if(invinc == 0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 746D6D89
		/// @DnDApplyTo : 312e01e4-18e2-4040-8f50-f8bfca631bc3
		/// @DnDParent : 0BE5EB55
		/// @DnDArgument : "health" "-33"
		/// @DnDArgument : "health_relative" "1"
		with(obj_norm_controller) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-33);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A23A7DB
		/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
		/// @DnDParent : 0BE5EB55
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "invincible"
		with(obj_norm) {
		invincible = 1;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3B571414
		/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
		/// @DnDParent : 0BE5EB55
		/// @DnDArgument : "speed" "11"
		/// @DnDArgument : "speed_relative" "1"
		with(obj_norm) image_speed += 11;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4CA1926E
		/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
		/// @DnDParent : 0BE5EB55
		/// @DnDArgument : "steps" "50"
		with(obj_norm) {
		alarm_set(0, 50);
		
		}
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 664DBEA5
instance_destroy();