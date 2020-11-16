require "premake/setup"
require "premake/external_library"
require "premake/library"
require "premake/application"
require "premake/finish"

setup("TechTest", "windows") --aix, bsd, haiku, linux, macosx, solaris, wii, windows, xbox360
external_library("glad")
external_library("glfw")
--library("AnnoLib", {"glad", "glfw", })
application("Test1", {"glad", "glfw", })
finish("TechTest")