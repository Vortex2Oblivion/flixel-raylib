package flixel.util;

import flixel.math.FlxMath;

class FlxStringUtil {
	public static function formatBytes(bytes:Float, precision:Int = 2):String {
		var units:Array<String> = ["Bytes", "kB", "MB", "GB", "TB", "PB"];
		var curUnit = 0;
		while (bytes >= 1024 && curUnit < units.length - 1) {
			bytes /= 1024;
			curUnit++;
		}
		return FlxMath.roundDecimal(bytes, precision) + units[curUnit];
	}
}
