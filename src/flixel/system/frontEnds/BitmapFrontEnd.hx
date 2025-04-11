package flixel.system.frontEnds;

import raylib.Texture;

class BitmapFrontEnd {
	public var cache:Map<String, Texture> = new Map<String, Texture>();

	public function new() {
		reset();
	}

	public function reset() {
		for (key in cache.keys()) {
			var obj = cache.get(key);
			cache.remove(key);

			unloadTexture(obj);
		}
	}
}
