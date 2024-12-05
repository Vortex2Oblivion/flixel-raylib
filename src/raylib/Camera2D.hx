package raylib;

@:native("Camera2D")
extern class Camera2D {
	public var offset:Vector2;

	public var target:Vector2;

	public var rotation:Float;

	public var zoom:Float;

	public static inline function create():Camera2D {
		return untyped __cpp__("Camera2D { 0 } ");
	}
}
