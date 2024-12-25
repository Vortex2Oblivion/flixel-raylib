package flixel.sound;

import cpp.ConstCharStar;
import flixel.FlxBasic;
import raylib.Music;

class FlxSound extends FlxBasic {
	var music:Music;

	public var playing(get, null):Bool = false;

	public var pitch(default, set):Float = 1.0;

	public var volume(default, set):Float = 1.0;

	public var pan(default, set):Float = 0.5;

	public var persist:Bool;

	public function loadEmbedded(embeddedSound:ConstCharStar):FlxSound {
        unloadMusicStream(music);
		music = loadMusicStream(embeddedSound);
		return this;
	}

	public inline function play() {
		playMusicStream(music);
	}

	public inline function stop() {
		stopMusicStream(music);
	}

	public inline function resume() {
		resumeMusicStream(music);
	}

	public inline function pause() {
		pauseMusicStream(music);
	}

	override public function destroy() {
		unloadMusicStream(music);
		super.destroy();
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
		updateMusicStream(music);
	}

	@:noCompletion 
	inline function get_playing():Bool {
		return isMusicStreamPlaying(music);
	}

	@:noCompletion 
	function set_pitch(pitch:Float):Float {
		setMusicPitch(music, pitch);
		return this.pitch = pitch;
	}

	@:noCompletion 
	function set_volume(volume:Float):Float {
		setMusicVolume(music, volume);
		return this.volume = volume;
	}

	@:noCompletion 
	function set_pan(pan:Float):Float {
		setMusicPan(music, pan);
		return this.pan = pan;
	}
}
