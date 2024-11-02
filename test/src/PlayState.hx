package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import raylib.RayMath;
import raylib.Raylib;

class PlayState extends FlxState {
	var skateboard:FlxSprite;

	var scythe:FlxSprite;

	override public function create() {
		super.create();
		skateboard = new FlxSprite();
		skateboard.loadGraphic("images/skateboard.png");
		add(skateboard);

		scythe = new FlxSprite();
		scythe.loadGraphic("images/scythe.png");
		scythe.width *= 0.25;
		scythe.height *= 0.25;
		add(scythe);
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		scythe.x = RayMath.lerp(scythe.x, Raylib.getMousePosition().x, elapsed * 10);
		scythe.y = RayMath.lerp(scythe.y, Raylib.getMousePosition().y, elapsed * 10);

		if (Raylib.isKeyPressed(32)) {
			FlxG.switchState(new OtherState());
		}
	}
}
