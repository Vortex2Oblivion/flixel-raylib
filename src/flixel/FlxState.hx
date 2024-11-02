package flixel;

import flixel.FlxBasic;
import raylib.Color;
import raylib.Colors;
import raylib.Raylib;

class FlxState extends FlxBasic {
	public var bgColor:Color = Colors.BLACK;

	public var members:Array<FlxBasic>;

	public function add(basic:FlxBasic):FlxBasic {
		if (basic == null)
			return null;

		if (members.indexOf(basic) >= 0)
			return basic;

		members.push(basic);

		return basic;
	}

	public function create():Void {}

	override public function destroy() {
		super.destroy();
		if(members == null) return;
		for (member in members){
			member?.destroy();
			member = null;
		}
	}

	public function new() {
		super();
		members = [];
	}

	override public function draw():Void {
		for (basic in members) {
			if (basic != null && basic.exists && basic.visible) {
				basic.draw();
			}
		}
	}
}
