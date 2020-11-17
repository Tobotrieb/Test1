#pragma once

#if defined(WINDOWS)
	#if defined(BUILD_DLL)
		/* We are building TestLib as a Win32 DLL */
		#define TLAPI __declspec(dllexport)
	#elif defined(USE_DLL)
		/* We are calling TestLib as a Win32 DLL */
		#define TLAPI __declspec(dllimport)
	#elif defined(LINUX) && defined(BUILD_DLL)
		/* We are building TestLib as a shared / dynamic library */
		#define TLAPI __attribute__((visibility("default")))
	#else
		/* We are building or calling TestLib as a static library */
		#define TLAPI
	#endif
#endif

#include "Application.h"
#include "Window/Window.h"