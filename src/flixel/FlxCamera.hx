package flixel;

import raylib.Camera2D;
import raylib.Vector2;

class FlxCamera extends FlxBasic {
	public var target:FlxObject;

	public var angle(default, set):Float;

	public var zoom(default, set):Float;

	public var x(default, set):Float;

	public var y(default, set):Float;

	@:allow(flixel.system.frontEnds.CameraFrontEnd)
	@:allow(flixel.FlxBasic.get_camera)
	static var _defaultCamera:FlxCamera;

	@:allow(flixel.FlxGame.new)
	var _camera:Camera2D;

	public function new(x:Float = 0, y:Float = 0) {
		super();
		this.x = x;
		this.y = y;
		_camera = Camera2D.create();
		_camera.target = Vector2.create(0, 0);
		_camera.offset = Vector2.create(x, y);
		_camera.zoom = 1;
		_camera.rotation = 0;
	}

	override public function update(elapsed:Float) {
		if (target != null) {
			updateFollow();
		}
	}

	public function updateFollow() {
		_camera.target = Vector2.create(target.x, target.y);
	}

	@:noCompletion function set_angle(angle:Float):Float {
		return _camera.rotation = angle;
	}

	@:noCompletion function set_zoom(zoom:Float):Float {
		return _camera.zoom = zoom;
	}

	@:noCompletion function set_x(x:Float):Float {
		_camera.offset = Vector2.create(x, y);
		return this.x = x;
	}

	@:noCompletion function set_y(y:Float):Float {
		_camera.offset = Vector2.create(x, y);
		return this.y = y;
	}
}
