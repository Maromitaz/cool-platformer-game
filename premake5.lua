outputdir = "%{cfg.buildcfg}"

workspace "Cool platformer game"
  configurations { "Debug", "Release", "Dist" }
  startproject "Game"

include "./external/glfw/premake5.lua"

project "Game"
  kind "ConsoleApp"
  language "C++"
  cppdialect "C++20"
 
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files {
    "./src/**",
  }
  
  includedirs {"%{wks.location}/external/glfw/include"}

  filter { "system:windows"}
    dependson {"GLFW"}
    links {"%{wks.location}/external/glfw/bin/" .. outputdir .. "/GLFW/GLFW.lib"}

  filter { "configurations:Debug" }
    defines { "DEBUG" }
    symbols "on"

  filter { "configurations:Release" }
    optimize "on"

  filter { "configurations:Dist" }
    optimize "full"

