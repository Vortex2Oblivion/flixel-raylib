package raylib;

import cpp.Star;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:structAccess
@:keep
@:native("Font")
extern class Font {
    public var baseSize:Int;
    public var glyphCount:Int;
    public var glyphPadding:Int;

    public var texure:Texture2D;

    public var recs:Star<Rectangle>;

    public var glyphs:Star<GlyphInfo>;
}
