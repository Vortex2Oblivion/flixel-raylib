package flixel;


class FlxG {
    public static var state(default, null):FlxState;

    public static var width(get, null):Int;

    public static var height(get, null):Int;

    @:noCompletion 
    static function get_width() {
        return getScreenWidth();
    }

    @:noCompletion 
    static function get_height() {
        return getScreenHeight();
    }

    public static function switchState(nextState:FlxState):Void {
        state?.destroy();
        state = null;
        state = nextState;
        nextState.create();
    }
}