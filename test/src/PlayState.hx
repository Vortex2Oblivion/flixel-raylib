package;

import raylib.Raylib;
import flixel.FlxState;
import flixel.FlxSprite;

class PlayState extends FlxState {
	var shotgun:FlxSprite;

	override public function create() {
		super.create();

		shotgun = new FlxSprite();
		shotgun.loadGraphic("assets/images/shotgun.png");
		shotgun.antialiasing = true;
		shotgun.screenCenter();
		shotgun.scale.set(0.5, 0.5);
		add(shotgun);
	}


	override public function update(elapsed:Float) {
		super.update(elapsed);
		shotgun.angle = Math.sin(Raylib.getTime()) * 65;
	}
}
