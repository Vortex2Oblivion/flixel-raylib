package flixel.animation;

class FlxFrame {
    public var x:Int;
	public var y:Int;
	public var width:Int;
	public var height:Int;
    public var name:String;

    public function new(name:String, x:Int, y:Int, width:Int, height:Int) {
        this.name = name;
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }
}