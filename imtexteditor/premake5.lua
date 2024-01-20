include "../imgui_dependencies.lua"

project "ImTextEditor"
	kind "StaticLib"
	language "C++"

	staticruntime "on"

	targetdir ("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/Intermediates/" .. outputdir .. "/%{prj.name}")

	files
	{
		"TextEditor.h",
		"TextEditor.cpp"
	}

	includedirs
	{
		"%{ImGui_IncludeDir.ImGui}",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		runtime "Release"
		optimize "on"