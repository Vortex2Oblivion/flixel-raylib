package raylib;

import cpp.CastCharStar;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:native("BoneInfo")
@:keep
@:structAccess
extern class BoneInfo {
    public var name:CastCharStar;
    public var parent:Int;
}