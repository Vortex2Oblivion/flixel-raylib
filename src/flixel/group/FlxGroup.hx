package flixel.group;

import flixel.FlxBasic;

typedef FlxGroup = FlxTypedGroup<FlxBasic>;

class FlxTypedGroup<T:FlxBasic> extends FlxBasic {
	public var members:Array<T>;

	public var maxSize(default, set):Int;

    public var length(default, null):Int = 0;

    
	public function new(maxSize:Int = 0) {
        super();
		members = [];
		this.maxSize = Std.int(Math.abs(maxSize));
	}
    
	override public function draw():Void {
        for (basic in members) {
            if (basic != null && basic.exists && basic.visible) {
                basic.draw();
			}
		}
	}

	public function add(basic:T):T {
		if (basic == null)
			return null;

		if (members.indexOf(basic) >= 0)
			return basic;

		if (maxSize > 0 && length >= maxSize)
			return basic;
        
		members.push(basic);

		return basic;
	}

	override public function destroy() {
		super.destroy();
		if(members != null){
			for (member in members) {
				member?.destroy();
				member = null;
			}
		}
	}

    @:noCompletion
    function set_maxSize(size:Int):Int {
        maxSize = Std.int(Math.abs(size));
    
        if (maxSize == 0 || members == null || maxSize >= length)
            return maxSize;
    
        // If the max size has shrunk, we need to get rid of some objects
        while (length > maxSize) {    
            members.splice(maxSize - 1, 1)[0]?.destroy();
            length--;
        }
    
        return maxSize;
    }
}
