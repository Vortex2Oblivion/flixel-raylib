package raylib;

import cpp.ConstCharStar;

@:native("BoneInfo")
extern class BoneInfo {
	public var name:ConstCharStar;
	public var parent:Int;
}
