project "assimp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    defines {
      "BUILD_SHARED_LIBS=OFF",
      -- "SWIG",
      "ASSIMP_BUILD_NO_OWN_ZLIB",
      "ASSIMP_BUILD_NO_USD_IMPORTER",
        "_CRT_SECURE_NO_WARNINGS",
        "ASSIMP_BUILD_NO_EXPORT",
        "ASSIMP_BUILD_NO_TINYUSDZ_IMPORTER",
        "ASSIMP_BUILD_BOOST_WORKAROUND",
        "ASSIMP_BUILD_NO_IFC_IMPORTER",
        "ASSIMP_BUILD_DLL_EXPORT",

      "ASSIMP_BUILD_NO_X_IMPORTER",
      "ASSIMP_BUILD_NO_3DS_IMPORTER",
      "ASSIMP_BUILD_NO_MD3_IMPORTER",
      "ASSIMP_BUILD_NO_MDL_IMPORTER",
      "ASSIMP_BUILD_NO_MD2_IMPORTER",
      "ASSIMP_BUILD_NO_PLY_IMPORTER",
      "ASSIMP_BUILD_NO_ASE_IMPORTER",
      -- "ASSIMP_BUILD_NO_OBJ_IMPORTER",
      "ASSIMP_BUILD_NO_AMF_IMPORTER",
      "ASSIMP_BUILD_NO_HMP_IMPORTER",
      "ASSIMP_BUILD_NO_SMD_IMPORTER",
      "ASSIMP_BUILD_NO_MDC_IMPORTER",
      "ASSIMP_BUILD_NO_MD5_IMPORTER",
      "ASSIMP_BUILD_NO_STL_IMPORTER",
      "ASSIMP_BUILD_NO_LWO_IMPORTER",
      "ASSIMP_BUILD_NO_DXF_IMPORTER",
      "ASSIMP_BUILD_NO_NFF_IMPORTER",
      "ASSIMP_BUILD_NO_RAW_IMPORTER",
      "ASSIMP_BUILD_NO_OFF_IMPORTER",
      "ASSIMP_BUILD_NO_AC_IMPORTER",
      "ASSIMP_BUILD_NO_BVH_IMPORTER",
      "ASSIMP_BUILD_NO_IRRMESH_IMPORTER",
      "ASSIMP_BUILD_NO_IRR_IMPORTER",
      "ASSIMP_BUILD_NO_Q3D_IMPORTER",
      "ASSIMP_BUILD_NO_B3D_IMPORTER",
      "ASSIMP_BUILD_NO_COLLADA_IMPORTER",
      "ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
      "ASSIMP_BUILD_NO_CSM_IMPORTER",
      "ASSIMP_BUILD_NO_3D_IMPORTER",
      "ASSIMP_BUILD_NO_LWS_IMPORTER",
      "ASSIMP_BUILD_NO_OGRE_IMPORTER",
      "ASSIMP_BUILD_NO_OPENGEX_IMPORTER",
      "ASSIMP_BUILD_NO_MS3D_IMPORTER",
      "ASSIMP_BUILD_NO_COB_IMPORTER",
      "ASSIMP_BUILD_NO_BLEND_IMPORTER",
      "ASSIMP_BUILD_NO_Q3BSP_IMPORTER",
      "ASSIMP_BUILD_NO_NDO_IMPORTER",
      "ASSIMP_BUILD_NO_IFC_IMPORTER",
      "ASSIMP_BUILD_NO_XGL_IMPORTER",
      "ASSIMP_BUILD_NO_FBX_IMPORTER",
      "ASSIMP_BUILD_NO_ASSBIN_IMPORTER",
      -- "ASSIMP_BUILD_NO_GLTF_IMPORTER",
      "ASSIMP_BUILD_NO_C4D_IMPORTER",
      "ASSIMP_BUILD_NO_3MF_IMPORTER",
      "ASSIMP_BUILD_NO_X3D_IMPORTER",
      "ASSIMP_BUILD_NO_MMD_IMPORTER",
      
      "ASSIMP_BUILD_NO_STEP_EXPORTER",
      "ASSIMP_BUILD_NO_SIB_IMPORTER",

      -- "ASSIMP_BUILD_NO_MAKELEFTHANDED_PROCESS",
      -- "ASSIMP_BUILD_NO_FLIPUVS_PROCESS",
      -- "ASSIMP_BUILD_NO_FLIPWINDINGORDER_PROCESS",
      -- "ASSIMP_BUILD_NO_CALCTANGENTS_PROCESS",
      "ASSIMP_BUILD_NO_JOINVERTICES_PROCESS",
      -- "ASSIMP_BUILD_NO_TRIANGULATE_PROCESS",
      "ASSIMP_BUILD_NO_GENFACENORMALS_PROCESS",
      -- "ASSIMP_BUILD_NO_GENVERTEXNORMALS_PROCESS",
      -- "ASSIMP_BUILD_NO_REMOVEVC_PROCESS",
      "ASSIMP_BUILD_NO_SPLITLARGEMESHES_PROCESS",
      "ASSIMP_BUILD_NO_PRETRANSFORMVERTICES_PROCESS",
      "ASSIMP_BUILD_NO_LIMITBONEWEIGHTS_PROCESS",
      -- "ASSIMP_BUILD_NO_VALIDATEDS_PROCESS",
      "ASSIMP_BUILD_NO_IMPROVECACHELOCALITY_PROCESS",
      "ASSIMP_BUILD_NO_FIXINFACINGNORMALS_PROCESS",
      "ASSIMP_BUILD_NO_REMOVE_REDUNDANTMATERIALS_PROCESS",
      "ASSIMP_BUILD_NO_FINDINVALIDDATA_PROCESS",
      "ASSIMP_BUILD_NO_FINDDEGENERATES_PROCESS",
      "ASSIMP_BUILD_NO_SORTBYPTYPE_PROCESS",
      "ASSIMP_BUILD_NO_GENUVCOORDS_PROCESS",
      "ASSIMP_BUILD_NO_TRANSFORMTEXCOORDS_PROCESS",
      "ASSIMP_BUILD_NO_FINDINSTANCES_PROCESS",
      "ASSIMP_BUILD_NO_OPTIMIZEMESHES_PROCESS",
      "ASSIMP_BUILD_NO_OPTIMIZEGRAPH_PROCESS",
      "ASSIMP_BUILD_NO_SPLITBYBONECOUNT_PROCESS",
      "ASSIMP_BUILD_NO_DEBONE_PROCESS",
      "ASSIMP_BUILD_NO_EMBEDTEXTURES_PROCESS",
      "ASSIMP_BUILD_NO_GLOBALSCALE_PROCESS",
    }

    files {
        -- Core files
        "%{prj.location}/code/Common/**.cpp",
        "%{prj.location}/code/Common/**.h",
        "%{prj.location}/code/PostProcessing/**.cpp",
        "%{prj.location}/code/PostProcessing/**.h",
        "%{prj.location}/code/Material/**.cpp",
        "%{prj.location}/code/Material/**.h",

        -- IO System
        "%{prj.location}/code/Common/IOSystem.cpp",
        "%{prj.location}/code/Common/DefaultIOStream.cpp",
        "%{prj.location}/code/Common/DefaultIOSystem.cpp",
        "%{prj.location}/include/assimp/IOSystem.hpp",
        "%{prj.location}/include/assimp/DefaultIOStream.h",
        "%{prj.location}/include/assimp/DefaultIOSystem.h",
        "%{prj.location}/code/CApi/CInterfaceIOWrapper.cpp",
        
        -- Asset importers
        "%{prj.location}/code/AssetLib/Obj/**.cpp",
        "%{prj.location}/code/AssetLib/Obj/**.h",
        "%{prj.location}/code/AssetLib/glTF/**.cpp",
        "%{prj.location}/code/AssetLib/glTF/**.h",
        "%{prj.location}/code/AssetLib/glTF2/**.cpp",
        "%{prj.location}/code/AssetLib/glTF2/**.h",
        "%{prj.location}/code/AssetLib/M3D/**.cpp",
        "%{prj.location}/code/AssetLib/M3D/**.h",
        "%{prj.location}/code/AssetLib/IQM/**.cpp",
        "%{prj.location}/code/AssetLib/IQM/**.h",
        
        -- glTF Common
        "%{prj.location}/code/AssetLib/glTFCommon/glTFCommon.cpp",
        "%{prj.location}/code/AssetLib/glTFCommon/glTFCommon.h",
        
        -- Dependencies
        "%{prj.location}/contrib/irrXML/**.cpp",
        "%{prj.location}/contrib/irrXML/**.h",
        "%{prj.location}/contrib/zlib/*.c",
        "%{prj.location}/contrib/zlib/*.h",
        "%{prj.location}/contrib/unzip/*.c",
        "%{prj.location}/contrib/unzip/*.h",
        "%{prj.location}/contrib/rapidjson/include/**.h",
        
        -- Include headers
        "%{prj.location}/include/**.h",
        "%{prj.location}/include/**.hpp",
        "%{prj.location}/include/**.inl",
        
        -- Base directory files
        "%{prj.location}/revision.h"
    }

    includedirs {
        "%{prj.location}/include",
        "%{prj.location}/code",
        "%{prj.location}/contrib",
        "%{prj.location}/contrib/irrXML",
        "%{prj.location}/contrib/zlib",
        "%{prj.location}/contrib/rapidjson/include",
        "%{prj.location}/contrib/unzip",
        "%{prj.location}/contrib/utf8cpp/source",
        "%{prj.location}/.", 
    }

    filter "system:windows"
        systemversion "latest"
        
        prebuildcommands {
            'if not exist "%{prj.location}\\include\\assimp\\revision.h" copy /Y "%{prj.location}\\revision.h.template" "%{prj.location}\\include\\assimp\\revision.h"',
            'if not exist "%{prj.location}\\contrib\\zlib\\zconf.h" copy /Y "%{prj.location}\\contrib\\zlib\\zconf.h.in" "%{prj.location}\\contrib\\zlib\\zconf.h"'
        }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
