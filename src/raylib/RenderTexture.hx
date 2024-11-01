package raylib;


@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:structAccess
@:keep
@:native("RenderTexture")
extern class RenderTexture {
    public var id:UInt;

    public var texture:Texture;
    public var depth:Texture;
}
