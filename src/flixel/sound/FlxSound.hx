package flixel.sound;

import cpp.ConstCharStar;
import flixel.FlxBasic;
import raylib.Sound;

class FlxSound extends FlxBasic {
	var sound:Sound;

	public var playing(get, null):Bool = false;

    public var pitch(default, set):Float = 1.0;

    public var volume(default, set):Float = 1.0;

    public var pan(default, set):Float = 0.5;

	public function loadEmbedded(embeddedSound:ConstCharStar):FlxSound {
		sound = loadSound(embeddedSound);
		return this;
	}

	public inline function play() {
		playSound(sound);
	}

	public inline function stop() {
		stopSound(sound);
	}

	public inline function resume() {
		resumeSound(sound);
	}

	public inline function pause() {
		pauseSound(sound);
	}

	override public function destroy() {
		unloadSound(sound);
		super.destroy();
	}

	@:noCompletion inline function get_playing():Bool {
		return isSoundPlaying(sound);
	}

    @:noCompletion function set_pitch(pitch:Float):Float {
        setSoundPitch(sound, pitch);
		return this.pitch = pitch;
	}

    @:noCompletion function set_volume(volume:Float):Float {
        setSoundVolume(sound, volume);
		return this.volume = volume;
	}

    @:noCompletion function set_pan(pan:Float):Float {
        setSoundPan(sound, pan);
		return this.pan = pan;
	}
}

