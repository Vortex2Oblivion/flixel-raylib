package flixel.sound;

import cpp.ConstCharStar;
import flixel.FlxBasic;
import raylib.Sound;
import raylib.Raylib;

class FlxSound extends FlxBasic {
    var sound:Sound;

    public function loadEmbedded(embeddedSound:ConstCharStar):FlxSound {
        if(embeddedSound == null) return this;
        sound = Raylib.loadSound(embeddedSound);
        @:privateAccess
        FlxG.state.add(this);
        return this;
    }

    public function play() {
        Raylib.playSound(sound);
    }

    public function stop() {
        Raylib.stopSound(sound);
    }

    override public function destroy() {
        stop();
		super.destroy();
	}
}