package flixel.sound;

import cpp.ConstCharStar;
import flixel.FlxBasic;
import raylib.Sound;

class FlxSound extends FlxBasic {
    var sound:Sound;

    public function loadEmbedded(embeddedSound:ConstCharStar):FlxSound {
        if(embeddedSound == null) return this;
        sound = loadSound(embeddedSound);
        return this;
    }

    public function play() {
        playSound(sound);
    }

    public function stop() {
        stopSound(sound);
    }

    override public function destroy() {
        stop();
        unloadSound(sound);
		super.destroy();
	}
}