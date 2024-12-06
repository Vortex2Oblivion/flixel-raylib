package flixel.system.frontEnds;

import flixel.group.FlxGroup;
import flixel.sound.FlxSound;

class SoundFrontEnd {
	public var music:FlxSound;

	public var list(default, null):FlxTypedGroup<FlxSound> = new FlxTypedGroup<FlxSound>();

	public function new() {}

	public function destroy(forceDestroy:Bool = false) {
        if (music != null && (forceDestroy || !music.persist)) {
            music.destroy();
			music = null;
		}
        
		for (sound in list.members) {
            if (sound != null && (forceDestroy || !sound.persist)) {
                sound.destroy();
			}
		}
	}

	@:allow(flixel.FlxGame)
	function update(elapsed:Float):Void {
		if (music != null && music.active)
			music.update(elapsed);

		if (list != null && list.active)
			list.update(elapsed);
	}
}
