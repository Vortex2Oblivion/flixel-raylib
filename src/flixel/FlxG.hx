package flixel;

import flixel.FlxCamera;
import flixel.system.frontEnds.CameraFrontEnd;

class FlxG {
	public static var state(default, null):FlxState;

	public static var width(get, null):Int;

	public static var height(get, null):Int;

	public static var initialWidth(default, null):Int;

	public static var initialHeight(default, null):Int;

	public static var camera:FlxCamera;

	public static var cameras(default, null):CameraFrontEnd = new CameraFrontEnd();

	@:noCompletion static function get_width() {
		return getScreenWidth();
	}

	@:noCompletion static function get_height() {
		return getScreenHeight();
	}

	@:allow(flixel.FlxGame.new) static function init(game:FlxGame, width:Int, height:Int) {
		initialWidth = width;
		initialHeight = height;
		cameras.reset();
	}

	public static function switchState(nextState:FlxState):Void {
		state?.destroy();
		state = null;
		state = nextState;
		nextState.create();
	}
}
