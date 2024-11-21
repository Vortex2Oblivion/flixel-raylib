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
    }

    override public function destroy() {
		super.destroy();
		sound.destroy();
	}
}