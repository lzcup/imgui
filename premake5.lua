project "ImGui"
  kind "StaticLib"
  language "C++"
  cppdialect "C++20"

  targetdir ("bin/"..outputdir.."/%{prj.name}")
  objdir ("bin-int/"..outputdir.."/%{prj.name}")

  files {
    "*.h",
    "*.cpp",
  }

  defines { "IMGUI_API=__declspec(dllexport)" }

  filter "system:windows"
    systemversion "latest"
    staticruntime "on"

  filter "configurations:Debug"
    defines "BL_DEBUG"
    symbols "on"
    runtime "Debug"
  
  filter "configurations:Release"
    defines "BL_RELEASE"
    optimize "on"
    runtime "Release"
