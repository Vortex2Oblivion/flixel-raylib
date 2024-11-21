package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.sound.FlxSound;
import raylib.Raylib;

class SoundState extends FlxState {
	var sound:FlxSound;

	override public function create() {
		super.create();
		sound = new FlxSound();
		sound.loadEmbedded("sound/Hades II - Mountain of the Gods - Supergiant Games.ogg");
		sound.play();
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
		if (Raylib.isKeyPressed(32)) {
			FlxG.switchState(new PlayState());
		}

    if(Raylib.isKeyDown(263)){
      sound.pitch -= elapsed;
    }

    if(Raylib.isKeyDown(262)){
      sound.pitch += elapsed;
    }

    sound.volume =  Math.abs(Math.sin(Raylib.getTime()));
    sound.pan =  Math.sin(Raylib.getTime());
	}

	override public function destroy() {
		super.destroy();
		sound.destroy();
	}
}
