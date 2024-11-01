package;

import flixel.FlxSprite;
import flixel.FlxSprite;
import raylib.*;

class Main {
	static function main() {
		Raylib.initWindow(1280, 720, "FlxProject");

		var sprite:FlxSprite = new FlxSprite().loadGraphic("images/maurice.png");

		var sprites:Array<String> = ["images/maurice.png", "images/skateboard.png"];

		var spriteCount:Int = 0;

		while (!Raylib.windowShouldClose()) {
			Raylib.clearBackground(Colors.BLACK);
			Raylib.beginDrawing();
			sprite.draw();
			sprite.angle = Math.tan(Raylib.getTime()) * 10;
			sprite.x = RayMath.lerp(sprite.x, Raylib.getMousePosition().x, Raylib.getFrameTime() * 10);
			sprite.y = RayMath.lerp(sprite.y, Raylib.getMousePosition().y, Raylib.getFrameTime() * 10);
			sprite.width = Math.sin(Raylib.getTime()) * 500;
			sprite.height = Math.cos(Raylib.getTime()) * 500;

			if (Raylib.isKeyPressed(32)) {
				spriteCount++;
				if (spriteCount + 1 > sprites.length) {
					spriteCount = 0;
				}
				sprite.loadGraphic(sprites[spriteCount]);
			}
			Raylib.drawFPS(0, 0);
			Raylib.endDrawing();
		}
		Raylib.closeWindow();
	}
}
