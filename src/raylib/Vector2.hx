package raylib;

@:native("Vector2")
extern class Vector2 {
	public var x:Float;

	public var y:Float;

	public static inline function create(x:Float, y:Float):Vector2 {
		return untyped __cpp__("Vector2{(float){0}, (float){1}}", x, y);
	}
}
