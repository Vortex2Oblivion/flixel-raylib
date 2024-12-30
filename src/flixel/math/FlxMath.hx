package flixel.math;

import raylib.RayMath;

class FlxMath {
	/**
	 * Minimum value of a floating point number.
	 */
	public static inline var MIN_VALUE_FLOAT:Float = 5e-324;

	/**
	 * Maximum value of a floating point number.
	 */
	public static inline var MAX_VALUE_FLOAT:Float = 1.79e+308;

	/**
	 * Minimum value of an integer.
	 */
	public static inline var MIN_VALUE_INT:Int = -MAX_VALUE_INT;

	/**
	 * Maximum value of an integer.
	 */
	public static inline var MAX_VALUE_INT:Int = 0x7FFFFFFF;

	/**
	 * Approximation of `Math.sqrt(2)`.
	 */
	public static inline var SQUARE_ROOT_OF_TWO:Float = 1.41421356237;


	/**
	 * Round a decimal number to have reduced precision (less decimal numbers).
	 * @param value The number to round
	 * @param precision The number of decimal numbers.
	 * @return The rounded number to the specified precision
	 */
	public static function roundDecimal(value:Float, precision:Int):Float {
		var mult:Float = 1;
		for (i in 0...precision) {
			mult *= 10;
		}
		return Math.fround(value * mult) / mult;
	}

	public static inline function lerp(start:Float, end:Float, amount:Float):Float {
        return RayMath.lerp(start, end, amount);
    }
}
