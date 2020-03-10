/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 59908DEE
/// @DnDArgument : "obj" "obj_norm"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "06823aed-4616-4c26-8e76-20f5a26795e1"
var l59908DEE_0 = false;
l59908DEE_0 = instance_exists(obj_norm);
if(!l59908DEE_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E01FD11
	/// @DnDParent : 59908DEE
	instance_destroy();
}