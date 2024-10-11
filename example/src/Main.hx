package;

import raylib.*;

class Main {
	static function main() {
		
		Raylib.initWindow(1280, 720, "FlxProject");

		while(!Raylib.windowShouldClose()){
			Raylib.beginDrawing();
			Raylib.clearBackground(Colors.BLACK);
			Raylib.endDrawing();
		}
		Raylib.closeWindow();
	}
}
