package raylib;

@:native("Vector3")
extern class Vector3 {
	public var x:Float;

	public var y:Float;

	public var z:Float;

	public static inline function create(x:Float = 0, y:Float = 0, z:Float = 0):Vector3 {
		return untyped __cpp__("Vector3{(float){0}, (float){1}, (float){2}}", x, y, z);
	}
}
