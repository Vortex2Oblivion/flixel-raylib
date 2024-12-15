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
		if (members != null) {
			for (member in members) {
				member?.destroy();
				member = null;
			}
		}
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
		for (basic in members) {
			if (basic != null && basic.exists && basic.active) {
				basic.update(elapsed);
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

	public function remove(basic:T, splice = false):T {
		if (members == null)
			return null;

		final index:Int = members.indexOf(basic);

		if (index < 0)
			return null;

		if (splice) {
			members.splice(index, 1);
			length--;
		} else
			members[index] = null;

		return basic;
	}

	public inline function getFirstAlive():Null<T> {
		return getFirstHelper((basic) -> basic.exists && basic.alive);
	}

	function getFirstHelper(func:T->Bool):Null<T> {
		for (basic in members) {
			if (basic != null && func(basic)) {
				return basic;
			}
		}
		return null;
	}

	public function countLiving():Int {
		var count:Int = 0;

		for (basic in members) {
			if (basic != null) {
				if (basic.exists && basic.alive)
					count++;
			}
		}

		return count;
	}
}
