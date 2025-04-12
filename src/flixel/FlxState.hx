package flixel;

import raylib.Raylib;
import flixel.FlxBasic;
import flixel.sound.FlxSound;
import flixel.group.FlxContainer;
import raylib.Color;

class FlxState extends FlxContainer {
	
	public var bgColor:Color = Raylib.BLACK;

	public function create():Void {}

	public override function destroy() {
		super.destroy();
		for (member in members) {
			member.destroy();
		}
	}
}
