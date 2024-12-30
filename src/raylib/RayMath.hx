package raylib;

@:include("raymath.h")
extern class RayMath {
	@:native("EPSILON")
	public static final EPSILON:Float;

	@:native("DEG2RAD")
	public static final DEG2RAD:Float;

	@:native("RAD2DEG")
	public static final RAD2DEG:Float;

	@:native("Clamp")
	public static function clamp(value:Float, min:Float, max:Float):Float;

	@:native("Lerp")
	public static function lerp(start:Float, end:Float, amount:Float):Float;

	@:native("Vector2Zero")
	public static function vector2Zero():Vector2;

	@:native("Vector2One")
	public static function vector2One():Vector2;

	@:native("Vector2Add")
	public static function vector2Add(v1:Vector2, v2:Vector2):Vector2;

	@:native("Vector2AddValue")
	public static function vector2AddValue(v:Vector2, add:Float):Vector2;

	@:native("Vector2Subtract")
	public static function vector2Subtract(v1:Vector2, v2:Vector2):Vector2;

	@:native("Vector2SubtractValue")
	public static function vector2SubtractValue(v1:Vector2, v2:Vector2):Vector2;
}
