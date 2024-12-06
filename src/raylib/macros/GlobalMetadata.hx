package raylib.macros;

import haxe.macro.Compiler;

class GlobalMetadata {
	public static function run() {
		Compiler.addGlobalMetadata('raylib', "@:buildXml(\"<include name='${haxelib:flixel-raylib}/src/Build.xml' />\")");
		Compiler.addGlobalMetadata('raylib', '@:include("raylib.h")');
		Compiler.addGlobalMetadata('raylib', '@:structAccess');
	}
}
