package flixel;

import flixel.FlxCamera;
import flixel.system.frontEnds.CameraFrontEnd;
import flixel.system.frontEnds.SoundFrontEnd;

class FlxG {
	public static var elapsed(get, null):Float;

	public static var state(default, null):FlxState;

	public static var width(get, null):Int;

	public static var height(get, null):Int;

	public static var initialWidth(default, null):Int;

	public static var initialHeight(default, null):Int;

	public static var camera:FlxCamera;

	public static var cameras(default, null):CameraFrontEnd = new CameraFrontEnd();

	public static var sound(default, null):SoundFrontEnd = new SoundFrontEnd();

	@:noCompletion static function get_width() {
		return getScreenWidth();
	}

	@:noCompletion static function get_height() {
		return getScreenHeight();
	}

	@:noCompletion
	static function get_elapsed() {
		return getFrameTime();
	}

	@:allow(flixel.FlxGame.new) static function init(game:FlxGame, width:Int, height:Int) {
		initialWidth = width;
		initialHeight = height;
		cameras.reset();
	}

	public static function switchState(nextState:FlxState):Void {
		cameras.reset();
		sound.destroy(true);
		state?.destroy();
		state = null;
		state = nextState;
		nextState.create();
	}
}
