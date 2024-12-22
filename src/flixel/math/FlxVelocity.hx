package flixel.math;

class FlxVelocity {
	public static function computeVelocity(velocity:Float, acceleration:Float, drag:Float, max:Float, elapsed:Float):Float {
		if (acceleration != 0) {
			velocity += acceleration * elapsed;
		} else if (drag != 0) {
			var _drag:Float = drag * elapsed;
			if (velocity - _drag > 0) {
				velocity -= _drag;
			} else if (velocity + _drag < 0) {
				velocity += _drag;
			} else {
				velocity = 0;
			}
		}
		if ((velocity != 0) && (max != 0)) {
			if (velocity > max) {
				velocity = max;
			} else if (velocity < -max) {
				velocity = -max;
			}
		}
		return velocity;
	}
}
