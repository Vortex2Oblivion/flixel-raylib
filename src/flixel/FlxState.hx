package flixel;

import flixel.FlxBasic;
import flixel.sound.FlxSound;
import flixel.group.FlxContainer;
import raylib.Color;
import raylib.Colors;

class FlxState extends FlxContainer {
	
	public var bgColor:Color = Colors.BLACK;

	public function create():Void {}

	public override function destroy() {
		super.destroy();
		for (member in members) {
			member.destroy();
		}
	}
}
