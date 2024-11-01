package raylib;

@:buildXml("<include name='${haxelib:flixel-raylib}/src/Build.xml'/>")
@:include("raylib.h")
@:native("rAudioBuffer")
@:keep
@:structAccess
extern class RAudioProcessor {}