package;

import flixel.FlxState;
import flixel.FlxSprite;
import raylib.Raylib;
import flixel.FlxG;
class OtherState extends FlxState {

    var maurice:FlxSprite;

    override public function create() {
        super.create();
        maurice = new FlxSprite();
        maurice.loadGraphic("assets/images/maurice.png");
        maurice.screenCenter();
        maurice.antialiasing = true;
        add(maurice);
    }
    
    override public function update(elapsed:Float) {
        super.update(elapsed);
        bgColor = Raylib.colorFromHSV(Raylib.getTime() * 100, 1, 1);
        maurice.angle  = Math.sin(Raylib.getTime()) * 10;
        if (FlxG.keys.justPressed.SPACE) {
			FlxG.switchState(new SoundState());
		}
    }
}