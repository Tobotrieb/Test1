
libraries = {}

function library(name, link_against)
	group("Libraries")
	project(name)
		kind("StaticLib")
		location("build")
		targetdir("lib")
		files({
			"include/%{prj.name}/**.h",
			"src/%{prj.name}/**.cpp",
			"src/%{prj.name}/**.c",
		})
		includedirs("include")
		
		links(link_against)
	
	table.insert(libraries, name)
end