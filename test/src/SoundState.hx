package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.sound.FlxSound;
import raylib.Raylib;

class SoundState extends FlxState {
	var sound:FlxSound;

	override public function create() {
		super.create();
		sound = FlxG.sound.list.add(new FlxSound());
		sound.loadEmbedded("sound/BICYCLE KICK - CYBERVORTEX PHIGHTING OST - aidn.wav");
		sound.play();
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
		if (Raylib.isKeyPressed(KEY_SPACE)) {
			FlxG.switchState(new TextState());
		}

		if (Raylib.isKeyDown(KEY_LEFT)) {
			sound.pitch -= elapsed;
		}

		if (Raylib.isKeyDown(KEY_RIGHT)) {
			sound.pitch += elapsed;
		}

		// sound.volume =  Math.abs(Math.sin(Raylib.getTime()));
		// sound.pan =  Math.sin(Raylib.getTime());
	}
}
