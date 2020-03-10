/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 136DEFE1
/// @DnDArgument : "obj" "obj_light"
/// @DnDSaveInfo : "obj" "a811763c-f5d6-477a-9b49-502ab221afa9"
var l136DEFE1_0 = false;
l136DEFE1_0 = instance_exists(obj_light);
if(l136DEFE1_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D5465D9
	/// @DnDApplyTo : a811763c-f5d6-477a-9b49-502ab221afa9
	/// @DnDParent : 136DEFE1
	with(obj_light) instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 33D2ABBE
/// @DnDArgument : "obj" "obj_light_controller"
/// @DnDSaveInfo : "obj" "04137360-c87b-46d2-94e4-c9e84b9445d7"
var l33D2ABBE_0 = false;
l33D2ABBE_0 = instance_exists(obj_light_controller);
if(l33D2ABBE_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 134E24ED
	/// @DnDApplyTo : 04137360-c87b-46d2-94e4-c9e84b9445d7
	/// @DnDParent : 33D2ABBE
	with(obj_light_controller) instance_destroy();
}