package;

import raylib.*;

class Main {
	static function main() {
		Raylib.initWindow(1280, 720, "FlxProject");

		var camera:Camera = Camera.create();
		camera.position = Vector3.create(45, 45, 45);
		camera.target = Vector3.create(0, 10, 0);
		camera.up = Vector3.create(0, 1, 0);
		camera.fovy = 45;
		camera.projection = CAMERA_PERSPECTIVE;
		var model:Model = Raylib.loadModel("bridge.obj");

		
		while(!Raylib.windowShouldClose()){
			Raylib.clearBackground(Colors.BLACK);
			Raylib.beginMode3D(camera);
			Raylib.drawGrid(20, 10);
			Raylib.drawCube(Vector3.create(-100, 0, 0), 10, 10, 10, Raylib.colorFromHSV(Raylib.getTime() * 100, 1, 1));
			Raylib.drawModel(model, Vector3.create(0, 0, 0), 2, Colors.BLUE);
			Raylib.endMode3D();
			Raylib.drawFPS(0, 0);
			Raylib.endDrawing();
		}
		Raylib.closeWindow();
	}
}
