/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 74F4B084
/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
with(obj_norm) speed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07813BCF
/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
/// @DnDArgument : "var" "invincible"
with(obj_norm) var l07813BCF_0 = invincible == 0;
if(l07813BCF_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3665A5A5
	/// @DnDParent : 07813BCF
	/// @DnDArgument : "var" "invinc"
	if(invinc == 0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 689DEAD3
		/// @DnDApplyTo : 312e01e4-18e2-4040-8f50-f8bfca631bc3
		/// @DnDParent : 3665A5A5
		/// @DnDArgument : "health" "-33"
		/// @DnDArgument : "health_relative" "1"
		with(obj_norm_controller) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-33);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A9E8AC4
		/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
		/// @DnDParent : 3665A5A5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "invincible"
		with(obj_norm) {
		invincible = 1;
		
		}
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6AC92FA2
		/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
		/// @DnDParent : 3665A5A5
		/// @DnDArgument : "speed" "11"
		/// @DnDArgument : "speed_relative" "1"
		with(obj_norm) image_speed += 11;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 746C86E6
		/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
		/// @DnDParent : 3665A5A5
		/// @DnDArgument : "steps" "50"
		with(obj_norm) {
		alarm_set(0, 50);
		
		}
	}
}