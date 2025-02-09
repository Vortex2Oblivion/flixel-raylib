package flixel.animation;

import sys.io.File;
import haxe.xml.Access;

class FlxAnimation {
	public var x(get, null):Float;
	public var y(get, null):Float;
	public var width(get, null):Int;
	public var height(get, null):Int;

    public var name:String;
    public var frame(default, set):Int = 0;
    public var frames:Array<FlxFrame>;
    public var curFrame(get, never):FlxFrame;

	public function new(width:Int, height:Int) {
		this.width = width;
		this.height = height;
        frames = [new FlxFrame("unknown", 0, 0, width, height)];
	}

	public function loadSpriteSheet(path:String) {
		var xml:Xml = Xml.parse(File.getContent(path));
		var data:Access = new Access(xml.firstElement());
        frames = [];
		for (texture in data.nodes.SubTexture) {
            var name:String = texture.att.name;
            var x:Int = Std.parseInt(texture.att.x);
            var y:Int = Std.parseInt(texture.att.y);
            var width:Int = Std.parseInt(texture.att.width);
            var height:Int = Std.parseInt(texture.att.height);
            frames.push(new FlxFrame(name, x, y, width, height));
        }
	}

    @:noCompletion 
    function set_frame(frame:Int):Int {
        if(frame >= frames.length){
            frame = 0;
        }
        if(frame < 0){
            frame = frames.length - 1;
        }
        return this.frame = frame;
    }

    @:noCompletion
    function get_x():Float {
        return curFrame.x;
    }

    @:noCompletion
    function get_y():Float {
        return curFrame.y;
    }

    @:noCompletion
    function get_width():Int {
        return curFrame.width;
    }

    @:noCompletion
    function get_height():Int {
        return curFrame.height;
    }

    @:noCompletion
    function get_curFrame() {
        return frames[frame];
    }
}
