package raylib;

import cpp.RawPointer;
import cpp.Star;

@:buildXml("<include name='${haxelib:flixel-raylib}/raylib/Build.xml' />")
@:include("raylib.h")
@:native("Model")
@:keep
@:structAccess
extern class Model {
    public var transform:Matrix;

    public var meshCount:Int;
    public var materialCount:Int;
    public var meshes:RawPointer<Mesh>;
    public var materials:RawPointer<Material>;
    public var meshMaterial:RawPointer<Int>;

    public var boneCount:Int;
    public var bones:RawPointer<BoneInfo>;
    public var bindPose:RawPointer<Transform>;
}