package flixel.group;

import flixel.FlxBasic;
import flixel.group.FlxGroup;

typedef FlxContainer = FlxTypedContainer<FlxBasic>;

class FlxTypedContainer<T:FlxBasic> extends FlxTypedGroup<T> {
    
}