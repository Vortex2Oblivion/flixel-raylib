package;

import raylib.*;

class Main {
	static function main() {
		Raylib.initWindow(1280, 720, "FlxProject");

		var texture:Texture2D = Raylib.loadTexture("boomball.png");

		Raylib.initAudioDevice();

		var sound:Sound = Raylib.loadSound("sensory overload.ogg");
		Raylib.setWindowIcon(Raylib.loadImageFromTexture(texture));

		var rect:Rectangle = Rectangle.create(100, 200, 200, 100);

		var s:Bool = false;

		while(!Raylib.windowShouldClose()){
			
			if(!s){
				Raylib.playSound(sound);
				s = true;
			}

			Raylib.beginDrawing();
			Raylib.clearBackground(Colors.WHITE);
			Raylib.drawTexture(texture, Std.int(Math.sin(Raylib.getTime()) * 100), 100, Raylib.colorFromHSV(Raylib.getTime() * 100, 1, 1));
			Raylib.drawLineBezier(Vector2.create(0, 0), Vector2.create(69, 420), 10, Raylib.colorFromHSV(Raylib.getTime() * 100, 1, 1));
			Raylib.drawEllipse(Std.int(Math.sin(Raylib.getTime()) * 100), Std.int(Math.cos(Raylib.getTime()) * 100), Std.int(Math.cos(Raylib.getTime()) * 100), Std.int(Math.sin(Raylib.getTime()) * 100), Raylib.colorFromHSV(Raylib.getTime() * 100, 1, 1));
			Raylib.drawRectangleGradientV(100, 100, 100, 100, Raylib.colorFromHSV(Raylib.getTime() * 100, 1, 1), Raylib.colorFromHSV(Raylib.getTime() * 100 + 180, 1, 1));
			Raylib.setWindowOpacity(Math.abs(Math.sin(Raylib.getTime())));
			Raylib.endDrawing();
		}
		Raylib.closeWindow();
	}
}
