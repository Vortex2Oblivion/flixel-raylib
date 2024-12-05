package raylib;

import cpp.RawPointer;

@:native("VrDeviceInfo")
extern class VrDeviceInfo {
	public var hResolution:Int;
	public var vResolution:Int;

	public var hScreenSize:Float;
	public var vScreenSize:Float;

	public var vScreenCenter:Float;

	public var eyeToScreenDistance:Float;
	public var lensSeparationDistance:Float;

	public var interpupillaryDistance:Float;
	public var lensDistortionValues:Array<Float>;
	public var chromaAbCorrection:Array<Float>;
}
