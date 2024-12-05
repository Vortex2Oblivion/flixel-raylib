package raylib;

@:native("VrStereoConfig")
extern class VrStereoConfig {
	public var projection:Array<Matrix>;
	public var viewOffset:Array<Matrix>;

	public var leftLensCenter:Array<Float>;
	public var rightLensCenter:Array<Float>;
	public var leftScreenCenter:Array<Float>;
	public var rightScreenCenter:Array<Float>;

	public var scale:Array<Float>;
	public var scaleIn:Array<Float>;
}
