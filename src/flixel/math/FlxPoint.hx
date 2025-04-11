package flixel.math;

import raylib.Vector2;

using raylib.RayMath;

@:forward
@:publicFields
abstract FlxPoint(Vector2) to Vector2 from Vector2 {
	public var x(get, set):Float;

    public var y(get, set):Float;

	inline public function new(x:Float = 0, y:Float = 0) {
		this = Vector2.create(x, y);
	}

	inline public function set(x:Float, y:Float) {
		this = Vector2.create(x, y);
	}

	@:op(a + b)
	static inline function add(a:FlxPoint, b:FlxPoint):FlxPoint {
		return a.vector2Add(b);
	}

    @:op(a - b)
	static inline function subtract(a:FlxPoint, b:FlxPoint):FlxPoint {
		return a.vector2Subtract(b);
	}

    @:op(a * b)
    static inline function multiply(a:FlxPoint, b:FlxPoint):FlxPoint {
        return Vector2.create(a.x * b.x, a.y * b.y);
    }

    @:op(a / b)
    static inline function divide(a:FlxPoint, b:FlxPoint):FlxPoint {
        return Vector2.create(a.x / b.x, a.y / b.y);
    }

    @:noCompletion
	private inline function set_x(x:Float):Float {
		return this.x = x;
	}

    @:noCompletion
	private inline function get_x():Float {
        return this.x;
    }

    @:noCompletion
	private inline function set_y(y:Float):Float {
		return this.y = y;
	}

    @:noCompletion
	private inline function get_y():Float {
        return this.y;
    }
}
