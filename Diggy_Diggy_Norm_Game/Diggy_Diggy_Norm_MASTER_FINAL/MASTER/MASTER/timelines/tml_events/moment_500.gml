/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 32137CDB
/// @DnDArgument : "obj" "obj_norm"
/// @DnDSaveInfo : "obj" "06823aed-4616-4c26-8e76-20f5a26795e1"
var l32137CDB_0 = false;
l32137CDB_0 = instance_exists(obj_norm);
if(l32137CDB_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 440ABAAF
	/// @DnDParent : 32137CDB
	/// @DnDArgument : "obj" "obj_boss"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "49f1a9cd-f4e9-4518-b60c-e13c9751429a"
	var l440ABAAF_0 = false;
	l440ABAAF_0 = instance_exists(obj_boss);
	if(!l440ABAAF_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4429DE5C
		/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
		/// @DnDParent : 440ABAAF
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_interest"
		/// @DnDSaveInfo : "objectid" "142801f6-c462-49ab-aba8-cf18afeebe9c"
		with(obj_norm) {
			instance_create_layer(x + 0, y + 0, "Instances", obj_interest); 
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5AB2A7CA
	/// @DnDParent : 32137CDB
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57D3331D
		/// @DnDParent : 5AB2A7CA
		/// @DnDArgument : "var" "global.defeated"
		/// @DnDArgument : "value" "false"
		if(global.defeated == false)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2B55D2C6
			/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
			/// @DnDParent : 57D3331D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_interest"
			/// @DnDSaveInfo : "objectid" "142801f6-c462-49ab-aba8-cf18afeebe9c"
			with(obj_norm) {
				instance_create_layer(x + 0, y + 0, "Instances", obj_interest); 
			}
		}
	}
}