package raylib;

import cpp.CastCharStar;

@:native("BoneInfo")
extern class BoneInfo {
	public var name:CastCharStar;
	public var parent:Int;
}
