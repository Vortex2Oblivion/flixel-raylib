package;

import flixel.math.FlxMath;
import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import raylib.Raylib;

class PlayState extends FlxState {
	var bf:FlxSprite;

	override public function create() {
		super.create();

		bf = new FlxSprite();
		bf.loadGraphic("assets/images/BOYFRIEND.png");
		bf.animation.loadSpriteSheet("assets/images/BOYFRIEND.xml");
		bf.antialiasing = true;
		bf.screenCenter();
		add(bf);
	}

	var framesCounter:Int = 0;

	override public function update(elapsed:Float) {
		super.update(elapsed);
		framesCounter++;

        if (framesCounter >= (FlxG.frameRate/24))
        {
            framesCounter = 0;
            bf.animation.frame++;
        }
		if(FlxG.keys.pressed.RIGHT){
			bf.animation.frame++;
		}
		if(FlxG.keys.pressed.LEFT){
			bf.animation.frame--;
		}
	}
}
