require "premake/library"

applications = {}

function application(name, link_against)
	group("Applications")
	project(name)
		filter {"configurations:Debug"}
			kind("ConsoleApp")
		filter {"configurations:Release"}
			kind("WindowedApp")
		filter {}
		location("build")
		targetdir("bin/%{prj.name}/%{cfg.longname}_%{cfg.architecture}")
		files({
			"include/%{prj.name}/**.h",
			"src/%{prj.name}/**.cpp",
			"src/%{prj.name}/**.c",
		})
		includedirs("include")
		
		links(link_against)
	
	table.insert(applications, name)
end