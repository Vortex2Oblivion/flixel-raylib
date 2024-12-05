package raylib;

@:native("Texture")
extern class Texture {
	public var id:UInt;

	public var width:Int;
	public var height:Int;

	public var mipmaps:Int;

	public var format:Int;
}
