package flixel.input;

enum abstract FlxInputState(Int) from Int {
	var JUST_RELEASED:Int = -1;
	var RELEASED:Int = 0;
	var PRESSED:Int = 1;
	var JUST_PRESSED:Int = 2;
}
