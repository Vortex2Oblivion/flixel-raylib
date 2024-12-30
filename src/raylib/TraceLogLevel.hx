package raylib;

/**
 * Trace log level
 * NOTE: Organized by priority level
 */
enum abstract TraceLogLevel(Int) to Int from Int {
	/**
	 * Display all logs
	 */
	var LOG_ALL:Int = 0;

	/**
	 * Trace logging, intended for internal use only
	 */
	var LOG_TRACE:Int;

	/**
	 * Debug logging, used for internal debugging it should be disabled on release builds
	 */
	var LOG_DEBUG:Int;

	/**
	 * Info logging, used for program execution info
	 */
	var LOG_INFO:Int;

	/**
	 * Warning logging, used on recoverable failures
	 */
	var LOG_WARNING:Int;

	/**
	 * Error logging, used on unrecoverable failures
	 */
	var LOG_ERROR:Int;

	/**
	 * Fatal logging, used to abort program: exit(EXIT_FAILURE)
	 */
	var LOG_FATAL:Int;

	/**
	 * Disable logging
	 */
	var LOG_NONE:Int;
}
