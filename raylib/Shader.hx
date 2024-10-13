package raylib;

import cpp.RawPointer;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:keep
@:native("Shader")
extern class Shader {
    public var id:UInt;

    public var locs:RawPointer<Int>;
}