package flixel.animation;

import flixel.math.FlxPoint;

class FlxFrame {
    public var x:Int;
	public var y:Int;
	public var width:Int;
	public var height:Int;
    public var name:String;
    public var offsetX:Int;
    public var offsetY:Int;

    public function new(name:String, x:Int, y:Int, width:Int, height:Int, offsetX:Int, offsetY:Int) {
        this.name = name;
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
        this.offsetX = offsetX;
        this.offsetY = offsetY;
    }
}