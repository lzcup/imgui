project "ImGui"
  kind "StaticLib"
  language "C++"

  targetdir ("bin/"..outputdir.."/%{prj.name}")
  objdir ("bin-int/"..outputdir.."/%{prj.name}")

  files {
    "*.h",
    "*.cpp",
  }

  defines { "IMGUI_API=__declspec(dllexport)" }

  filter "system:windows"
    systemversion "latest"
    cppdialect "C++20"
    staticruntime "on"

  filter {"system:windows","configurations:Release"}
    buildoptions "/MT"
