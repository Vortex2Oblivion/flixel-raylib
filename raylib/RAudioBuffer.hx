package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:native("rAudioBuffer")
@:keep
@:structAccess
extern class RAudioBuffer {}