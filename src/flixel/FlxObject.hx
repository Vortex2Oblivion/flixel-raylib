package flixel;

class FlxObject extends FlxBasic {
    public var x:Float = 0;

    public var y:Float = 0;

    public var width:Float = 0;

    public var height:Float = 0;

    public var angle:Float = 0;

    public function new(x:Float = 0, y:Float, width:Float = 0, height:Float = 0) {
        super();

        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }
}