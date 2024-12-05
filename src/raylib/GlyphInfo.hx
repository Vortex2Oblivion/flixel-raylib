package raylib;

@:native("GlyphInfo")
extern class GlyphInfo {
	public var value:Int;
	public var offsetX:Int;
	public var offsetY:Int;
	public var advanceX:Int;
	public var image:Image;
}
