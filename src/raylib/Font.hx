package raylib;

import cpp.RawPointer;

@:native("Font")
extern class Font {
	public var baseSize:Int;
	public var glyphCount:Int;
	public var glyphPadding:Int;

	public var texture:Texture2D;

	public var recs:RawPointer<Rectangle>;

	public var glyphs:RawPointer<GlyphInfo>;
}
