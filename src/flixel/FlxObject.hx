package flixel;

import flixel.math.FlxVelocity;
import flixel.math.FlxPoint;
import flixel.util.FlxAxes;

class FlxObject extends FlxBasic {
	public var x:Float = 0;

	public var y:Float = 0;

	@:isVar public var width(get, set):Float = 0;

	@:isVar public var height(get, set):Float = 0;

	public var angle:Float = 0;

	public var velocity(default, null):FlxPoint;

	public var maxVelocity(default, null):FlxPoint;

	public var scrollFactor(default, null):FlxPoint;

	public var acceleration(default, null):FlxPoint;

	public var drag(default, null):FlxPoint;

	public var angularVelocity:Float = 0;

	public var angularAcceleration:Float = 0;

	public var angularDrag:Float = 0;

	public var maxAngular:Float = 10000;

	public function new(x:Float = 0, y:Float, width:Float = 0, height:Float = 0) {
		super();

		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;

		initVars();
	}

	@:noCompletion
	inline function initVars() {
		scrollFactor = FlxPoint.create(1, 1);
		initMotionVars();
	}

	@:noCompletion
	inline function initMotionVars() {
		velocity = FlxPoint.create();
		acceleration = FlxPoint.create();
		drag = FlxPoint.create();
		maxVelocity = FlxPoint.create(10000, 10000);
	}

	public function screenCenter(axes:FlxAxes = XY):FlxObject {
		if (axes.x)
			x = (FlxG.width - width) / 2;

		if (axes.y)
			y = (FlxG.height - height) / 2;

		return this;
	}

	override public function update(elapsed:Float) {
		updateMotion(elapsed);
	}

	@:noCompletion
	function updateMotion(elapsed:Float):Void {
		var velocityDelta:Float = 0.5 * (FlxVelocity.computeVelocity(angularVelocity, angularAcceleration, angularDrag, maxAngular, elapsed)
			- angularVelocity);
		angularVelocity += velocityDelta;
		angle += angularVelocity * elapsed;
		angularVelocity += velocityDelta;

		velocityDelta = 0.5 * (FlxVelocity.computeVelocity(velocity.x, acceleration.x, drag.x, maxVelocity.x, elapsed) - velocity.x);
		velocity.x += velocityDelta;
		var delta:Float = velocity.x * elapsed;
		velocity.x += velocityDelta;
		x += delta;

		velocityDelta = 0.5 * (FlxVelocity.computeVelocity(velocity.y, acceleration.y, drag.y, maxVelocity.y, elapsed) - velocity.y);
		velocity.y += velocityDelta;
		delta = velocity.y * elapsed;
		velocity.y += velocityDelta;
		y += delta;
	}

	@:noCompletion
	function set_width(value:Float):Float {
		return width = value;
	}

	@:noCompletion
	function set_height(value:Float):Float {
		return height = value;
	}

	@:noCompletion
	function get_height():Float {
		return height;
	}

	@:noCompletion
	function get_width():Float {
		return width;
	}
}
