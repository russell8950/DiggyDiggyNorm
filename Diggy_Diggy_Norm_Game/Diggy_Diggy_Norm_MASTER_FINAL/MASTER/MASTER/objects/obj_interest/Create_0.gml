/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2D0D2E8A
/// @DnDArgument : "obj" "obj_norm"
/// @DnDSaveInfo : "obj" "06823aed-4616-4c26-8e76-20f5a26795e1"
var l2D0D2E8A_0 = false;
l2D0D2E8A_0 = instance_exists(obj_norm);
if(l2D0D2E8A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36669BD0
	/// @DnDParent : 2D0D2E8A
	/// @DnDArgument : "var" "global.defeated"
	/// @DnDArgument : "value" "false"
	if(global.defeated == false)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 3989799C
		/// @DnDParent : 36669BD0
		/// @DnDArgument : "code" "if (obj_norm_controller.__dnd_score == 0) {$(13_10)	obj_norm_controller.__dnd_score = 1;$(13_10)	text = "Life is difficult!";$(13_10)}$(13_10)else {$(13_10)	var debt = obj_norm_controller.__dnd_score * .1;$(13_10)	obj_norm_controller.__dnd_score += debt;$(13_10)	text = "Interest +" + string(debt) + "K";$(13_10)}"
		if (obj_norm_controller.__dnd_score == 0) {
			obj_norm_controller.__dnd_score = 1;
			text = "Life is difficult!";
		}
		else {
			var debt = obj_norm_controller.__dnd_score * .1;
			obj_norm_controller.__dnd_score += debt;
			text = "Interest +" + string(debt) + "K";
		}
	}
}