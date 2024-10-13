package raylib;

import cpp.RawPointer;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:native("Material")
@:keep
@:structAccess
extern class Material {
    public var shader:Shader;
    public var maps:RawPointer<MaterialMap>;
    public var params:Array<Float>;
}