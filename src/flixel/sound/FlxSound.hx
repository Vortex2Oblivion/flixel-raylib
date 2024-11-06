package flixel.sound;

import cpp.ConstCharStar;
import flixel.FlxBasic;
import raylib.Sound;
import raylib.Raylib;

class FlxSound extends FlxBasic {
    var _sound:Sound;

    public function loadEmbedded(embeddedSound:ConstCharStar):FlxSound {
        if(embeddedSound == null) return this;
        _sound = Raylib.loadSound(embeddedSound);
        return this;
    }

    public function play() {
        Raylib.playSound(_sound);
    }

    public function stop() {
        Raylib.stopSound(_sound);
    }
}