package flixel.math;

class FlxMath {
	public static function roundDecimal(value:Float, precision:Int):Float {
		var mult:Float = 1;
		for (i in 0...precision) {
			mult *= 10;
		}
		return Math.fround(value * mult) / mult;
	}
}
