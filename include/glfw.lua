
includedirs({'../include'})

files({
	'../include/glfw/glfw3.h',
	'../include/glfw/glfw3native.h',
	'../src/glfw/glfw_config.h',
	'../src/glfw/context.c',
	'../src/glfw/init.c',
	'../src/glfw/input.c',
	'../src/glfw/monitor.c',
	'../src/glfw/vulkan.c',
	'../src/glfw/window.c'
})

filter {'system:windows'}
	files({
		'../src/glfw/win32_init.c',
		'../src/glfw/win32_joystick.c',
		'../src/glfw/win32_monitor.c',
		'../src/glfw/win32_time.c',
		'../src/glfw/win32_thread.c',
		'../src/glfw/win32_window.c',
		'../src/glfw/wgl_context.c',
		'../src/glfw/egl_context.c',
		'../src/glfw/osmesa_context.c'
	})

	defines({'_GLFW_WIN32'})


	links('opengl32.lib')

filter {'system:linux'}
	files({
		'../src/glfw/x11_init.c',
		'../src/glfw/x11_monitor.c',
		'../src/glfw/x11_window.c',
		'../src/glfw/xkb_unicode.c',
		'../src/glfw/posix_time.c',
		'../src/glfw/posix_thread.c',
		'../src/glfw/glx_context.c',
		'../src/glfw/egl_context.c',
		'../src/glfw/osmesa_context.c',
		'../src/glfw/linux_joystick.c'
	})

	defines({'_GLFW_X11'})

	filter {}