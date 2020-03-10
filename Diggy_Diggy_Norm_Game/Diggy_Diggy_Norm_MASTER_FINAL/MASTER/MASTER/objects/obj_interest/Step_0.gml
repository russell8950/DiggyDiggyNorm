/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0457C49C
/// @DnDArgument : "code" "y-=1;$(13_10)image_alpha -= 0.05$(13_10) if (image_alpha == 0) {$(13_10)	 instance_destroy();$(13_10)}"
y-=1;
image_alpha -= 0.05
 if (image_alpha == 0) {
	 instance_destroy();
}