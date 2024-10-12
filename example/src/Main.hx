package;

import raylib.*;

class Main {
	static function main() {
		
		Raylib.initWindow(1280, 720, "FlxProject");

		while(!Raylib.windowShouldClose()){
			Raylib.beginDrawing();
			Raylib.clearBackground(Color.create(255, 0, 255, 255));
			Raylib.drawFPS(0, 0);
			Raylib.endDrawing();
		}
		Raylib.closeWindow();
	}
}
