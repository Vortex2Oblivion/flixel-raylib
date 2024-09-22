package;

import raylib.*;

class Main {
	static function main() {
		Raylib.initWindow(1280, 720, "FlxProject");

		var texture:Texture2D = Raylib.loadTexture("boomball.png");

		Raylib.initAudioDevice();

		var sound:Sound = Raylib.loadSound("sensory overload.ogg");
		Raylib.setWindowIcon(Raylib.loadImage("boomball.png"));

		var s:Bool = false;

		while(!Raylib.windowShouldClose()){
			if(!s){
				Raylib.playSound(sound);
				s = true;
			}

			trace(RayMath.DEG2RAD);

			Raylib.beginDrawing();
			Raylib.clearBackground(Colors.WHITE);
			Raylib.drawTexture(texture, Std.int(Math.sin(Raylib.getTime()) * 100), 100, Raylib.colorFromHSV(Raylib.getTime() * 100, 1, 1));
			Raylib.setWindowOpacity(Math.abs(Math.sin(Raylib.getTime())));
			Raylib.endDrawing();
		}
		Raylib.closeWindow();
	}
}
