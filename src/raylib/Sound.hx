package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:native("Sound")
@:keep
@:structAccess
extern class Sound {
    public var stream:AudioStream;
    public var frameCount:UInt;
}