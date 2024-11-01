package;

import flixel.FlxSprite;
import flixel.FlxSprite;
import raylib.*;

class Main {
	static function main() {
		Raylib.initWindow(1280, 720, "FlxProject");

		var sprite:FlxSprite = new FlxSprite().loadGraphic("maurice.png");
		
		while(!Raylib.windowShouldClose()){
			Raylib.clearBackground(Colors.BLACK);
			Raylib.beginDrawing();
			sprite.draw();
			sprite.angle = Math.sin(Raylib.getTime()) * 10;
			Raylib.drawFPS(0, 0);
			Raylib.endDrawing();
		}
		Raylib.closeWindow();
	}
}
