package raylib;

@:native("Transform")
extern class Transform {
	public var translation:Vector3;
	public var rotation:Quaternion;
	public var scale:Vector3;
}
