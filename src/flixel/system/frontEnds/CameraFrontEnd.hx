package flixel.system.frontEnds;

import flixel.FlxCamera;

class CameraFrontEnd {
	public var list(default, null):Array<FlxCamera> = [];

	var defaultCamera:FlxCamera;

	public function new() {
		FlxCamera._defaultCamera = defaultCamera;
	}

	public function add<T:FlxCamera>(camera:T, defaultDraw:Bool = true):T {
		list.push(camera);
		defaultCamera = camera;
		camera.ID = list.length - 1;
		return camera;
	}

	public function reset(?camera:FlxCamera) {
		while (list.length > 0)
			remove(list[0]);
		if (camera == null)
			camera = new FlxCamera(0, 0);

		FlxG.camera = add(camera);

		camera.ID = 0;

		FlxCamera._defaultCamera = defaultCamera;
	}

	public function remove(camera:FlxCamera, destroy:Bool = true):Void {
		var index:Int = list.indexOf(camera);
		if (camera != null && index != -1) {
			list.splice(index, 1);
		} else {
			return;
		}

		for (i in 0...list.length) {
			list[i].ID = i;
		}

		if (destroy)
			camera.destroy();
	}
}
