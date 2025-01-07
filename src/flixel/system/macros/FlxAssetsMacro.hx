package flixel.system.macros;

import haxe.macro.Expr;
import sys.io.File;
import sys.io.Process;
import sys.FileSystem;
import haxe.macro.Compiler;
import haxe.macro.Context;

class FlxAssetsMacro {
	public static macro function run():Expr {
		var process:Process = new Process('haxelib libpath flixel-raylib');
		var libPath:String = process.stdout.readLine();
		var assetsPath:String = Context.definedValue('assetsPath');
		var outputFolder:String = '${Compiler.getOutput()}/$assetsPath/';
		process.close();
        
        moveFiles('$libPath/assets', outputFolder);
		moveFiles(assetsPath, outputFolder);

		return macro a;
	}

	public static function moveFiles(start:String, destination:String) {
		if (!FileSystem.exists(start)) {
			trace('Source directory "$start" does not exist');
			return;
		}

		if (!FileSystem.exists(destination)) {
			FileSystem.createDirectory(destination);
		}

		for (file in FileSystem.readDirectory(start)) {
			var filePath:String = '$start/$file';
			var destPath:String = '$destination/$file';

			if (FileSystem.isDirectory(filePath)) {
				moveFiles(filePath, destPath);
			} else {
				File.copy(filePath, destPath);
			}
		}
	}
}
