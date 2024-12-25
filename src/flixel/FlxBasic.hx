package flixel;

class FlxBasic {
	public var active:Bool = true;

	public var visible:Bool = true;

	public var alive:Bool = true;

	public var exists:Bool = true;

	@:noCompletion static var idEnumerator:Int = 0;

	public var ID:Int = idEnumerator++;

	public var camera(get, default):FlxCamera = FlxG.camera;

	public function new() {}

	public function draw():Void {}

	public function update(elapsed:Float):Void {}

	public function kill():Void {
		alive = false;
		exists = false;
	}

	public function revive():Void {
		alive = true;
		exists = true;
	}

	public function destroy():Void {
		exists = false;
	}


	@:noCompletion function get_camera():FlxCamera {
		return camera;
	}
}