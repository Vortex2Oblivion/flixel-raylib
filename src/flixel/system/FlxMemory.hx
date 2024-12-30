package flixel.system;

import cpp.Lib;

class FlxMemory{
    @:allow(flixel.FlxG.init) 
    private static function init() {
        getMemory = Lib.load("memory.ndll", "get_memory_usage", 0);
        getPeakMemory = Lib.load("memory.ndll", "get_memory_peak", 0);
    }

    public static dynamic function getMemory():Float {
        return 0;
    }

    public static dynamic function getPeakMemory():Float {
        return 0;
    }
}