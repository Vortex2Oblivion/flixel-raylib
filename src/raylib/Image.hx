package raylib;

import cpp.RawPointer;

@:native("Image")
extern class Image {
	public var data:RawPointer<cpp.Void>;

	public var width:Int;
	public var height:Int;

	public var mipmaps:Int;

	public var format:Int;
}
