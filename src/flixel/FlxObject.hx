package flixel;

class FlxObject extends FlxBasic {
	public var x:Float = 0;

	public var y:Float = 0;

	@:isVar public var width(get, set):Float = 0;

	@:isVar public var height(get, set):Float = 0;

	public var angle:Float = 0;

	public function new(x:Float = 0, y:Float, width:Float = 0, height:Float = 0) {
		super();

		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
	}

    @:noCompletion
	function get_width():Float {
		return width;
	}

	@:noCompletion
	function get_height():Float {
		return height;
	}

    @:noCompletion
	function set_width(value:Float):Float {
		return width = value;
	}

	@:noCompletion
	function set_height(value:Float):Float {
		return height = value;
	}
}
