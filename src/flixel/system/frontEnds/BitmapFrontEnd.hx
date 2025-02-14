package flixel.system.frontEnds;

import raylib.Texture;

class BitmapFrontEnd {
	public var cache:Map<String, Texture> = new Map<String, Texture>();

	public function new() {
		reset();
	}

	public function reset() {
		if (cache == null) {
			cache = new Map<String, Texture>();
			return;
		}

		for (key in cache.keys()) {
			var obj = cache.get(key);
			cache.remove(key);

			unloadTexture(obj);
		}
	}
}
