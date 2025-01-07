package;

import flixel.math.FlxMath;
import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import raylib.Raylib;

class PlayState extends FlxState {
	var skateboard:FlxSprite;

	var scythe:FlxSprite;

	override public function create() {
		super.create();

		skateboard = new FlxSprite();
		skateboard.loadGraphic("assets/images/skateboard.png");
		skateboard.velocity.x = 15;
		skateboard.antialiasing = true;
		add(skateboard);

		scythe = new FlxSprite();
		scythe.loadGraphic("assets/images/scythe.png");
		scythe.width *= 0.25;
		scythe.height *= 0.25;
		scythe.antialiasing = true;
		add(scythe);
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);

		scythe.x = FlxMath.lerp(scythe.x, Raylib.getMousePosition().x, elapsed * 10);
		scythe.y = FlxMath.lerp(scythe.y, Raylib.getMousePosition().y, elapsed * 10);
		
		if (Raylib.isKeyPressed(KEY_SPACE)) {
			FlxG.switchState(new OtherState());
		}
	}
}
