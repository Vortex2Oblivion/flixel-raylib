package raylib;

enum abstract CameraMode(Int)
{
	var CAMERA_CUSTOM = 0;
	var CAMERA_FREE = 1;
    var CAMERA_ORBITAL = 2;
    var CAMERA_FIRST_PERSON = 3;
    var CAMERA_THIRD_PERSON = 4;
}