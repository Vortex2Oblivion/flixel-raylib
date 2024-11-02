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
        maurice.loadGraphic("images/maurice.png");
        maurice.screenCenter();
        add(maurice);
    }
    override public function update(elapsed:Float) {
        super.update(elapsed);
        bgColor = Raylib.colorFromHSV(Raylib.getTime() * 100, 1, 1);
        if (Raylib.isKeyPressed(32)) {
			FlxG.switchState(new PlayState());
		}
    }
}