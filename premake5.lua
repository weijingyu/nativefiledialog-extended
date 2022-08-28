project "nfd"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/include/nfd.h",
        "src/include/nfd.hpp",
        "src/nfd_win.cpp"

    }

    includedirs
    {
        "src/include",
    }

    exceptionhandling "off"
    callingconvention "FastCall"

    defines {
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter "system:linux"
        pic "On"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
