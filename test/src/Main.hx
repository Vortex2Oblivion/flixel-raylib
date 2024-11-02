package;

import flixel.FlxGame;
import flixel.FlxState;

class Main {
	static function main() {
		new FlxGame(1280, 720, new PlayState(), 0);
	}
}
