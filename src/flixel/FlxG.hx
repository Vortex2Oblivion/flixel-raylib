package flixel;

import flixel.input.FlxKeyManager;
import raylib.Raylib;
import flixel.system.FlxMemory;
import flixel.FlxCamera;
import flixel.system.frontEnds.CameraFrontEnd;
import flixel.system.frontEnds.SoundFrontEnd;
import haxe.Log;
import haxe.PosInfos;

using StringTools;

@:cppFileCode('#include <iostream>')
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

	public static var keys(default, null):FlxKeyManager;

	public static function switchState(nextState:FlxState):Void {
		cameras.reset();
		sound.destroy(true);
		state?.destroy();
		state = nextState;
		nextState.create();
	}

	/**
	 * Opens a webpage in the user's browser.
	 * If the URL does not already start with `"http://"` or `"https://"`, it gets added automatically.
	 * @param url The web address.
	 */
	public static inline function openURL(url:String):Void {
		if(!url.startsWith("http://") && !url.startsWith("https://")) 
			url = "https://" + url;

		Raylib.openURL(url);
	}

	@:allow(flixel.FlxGame.new) 
	static function init(game:FlxGame, width:Int, height:Int) {
		Log.trace = (v:Dynamic, ?infos:PosInfos) -> untyped __cpp__("std::cout << {0}", '${Log.formatOutput(v, infos)}\n');
		FlxMemory.init();
		initialWidth = width;
		initialHeight = height;
		cameras.reset();

		keys = new FlxKeyManager();
	}

	@:noCompletion
	static inline function get_width() {
		return getScreenWidth();
	}

	@:noCompletion
	static inline function get_height() {
		return getScreenHeight();
	}

	@:noCompletion
	static inline function get_elapsed() {
		return getFrameTime();
	}
}
