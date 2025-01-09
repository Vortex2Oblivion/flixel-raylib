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
		sound.loadEmbedded("assets/sounds/BICYCLE KICK - CYBERVORTEX PHIGHTING OST - aidn.wav");
		sound.play();
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
		if (FlxG.keys.justPressed.SPACE) {
			FlxG.switchState(new TextState());
		}

		if (FlxG.keys.pressed.LEFT) {
			sound.pitch -= elapsed;
		}

		if (FlxG.keys.pressed.RIGHT) {
			sound.pitch += elapsed;
		}

		// sound.volume =  Math.abs(Math.sin(Raylib.getTime()));
		// sound.pan =  Math.sin(Raylib.getTime());
	}
}
