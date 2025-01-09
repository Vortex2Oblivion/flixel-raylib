package flixel.input;

import flixel.input.keyboard.FlxKeyList;

class FlxKeyManager {
	public var pressed(default, null):FlxKeyList;

	public var justPressed(default, null):FlxKeyList;

	public var released(default, null):FlxKeyList;

	public var justReleased(default, null):FlxKeyList;

	public function new() {
        pressed = new FlxKeyList(PRESSED);
        justPressed = new FlxKeyList(JUST_PRESSED);
        released = new FlxKeyList(RELEASED);
        justReleased = new FlxKeyList(JUST_RELEASED);
    }
}
