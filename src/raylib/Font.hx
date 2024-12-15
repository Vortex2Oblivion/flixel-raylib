package raylib;

import cpp.Star;

@:native("Font")
extern class Font {
	public var baseSize:Int;
	public var glyphCount:Int;
	public var glyphPadding:Int;

	public var texture:Texture2D;

	public var recs:Star<Rectangle>;

	public var glyphs:Star<GlyphInfo>;
}
