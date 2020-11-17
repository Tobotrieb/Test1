
warnings("Off")

files({
	'../src/GLFW/context.c',
	'../src/GLFW/init.c',
	'../src/GLFW/input.c',
	'../src/GLFW/monitor.c',
	'../src/GLFW/vulkan.c',
	'../src/GLFW/window.c'
})

filter {'system:windows'}
	files({
		'../src/GLFW/win32_init.c',
		'../src/GLFW/win32_joystick.c',
		'../src/GLFW/win32_monitor.c',
		'../src/GLFW/win32_time.c',
		'../src/GLFW/win32_thread.c',
		'../src/GLFW/win32_window.c',
		'../src/GLFW/wgl_context.c',
		'../src/GLFW/egl_context.c',
		'../src/GLFW/osmesa_context.c'
	})

	defines({'_GLFW_WIN32'})


	links('opengl32.lib')

filter {'system:linux'}
	files({
		'../src/GLFW/x11_init.c',
		'../src/GLFW/x11_monitor.c',
		'../src/GLFW/x11_window.c',
		'../src/GLFW/xkb_unicode.c',
		'../src/GLFW/posix_time.c',
		'../src/GLFW/posix_thread.c',
		'../src/GLFW/glx_context.c',
		'../src/GLFW/egl_context.c',
		'../src/GLFW/osmesa_context.c',
		'../src/GLFW/linux_joystick.c'
	})

	defines({'_GLFW_X11'})

	filter {}