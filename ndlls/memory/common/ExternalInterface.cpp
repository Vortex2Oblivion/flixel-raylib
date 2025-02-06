#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif

#if defined(HX_WINDOWS)
#include <windows.h>
#include <dwmapi.h>

#pragma comment(lib, "Dwmapi")
#endif


#include <hx/CFFI.h>
#include <hx/CFFIPrime.h>
#include "memory.h"

static value get_memory_usage() {
	return alloc_float(getCurrentRSS());
}
DEFINE_PRIME0 (get_memory_usage);

static value get_memory_peak() {
	return alloc_float(getPeakRSS());
}
DEFINE_PRIME0 (get_memory_peak);

extern "C" void memory_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (memory_main);



extern "C" int memory_register_prims () { return 0; }