cmake_minimum_required(VERSION 2.8.4)
cmake_policy(SET CMP0042 NEW)
project(OpenFrameworks)

# ==================== Get oF Version ====================
file(STRINGS libs/openFrameworks/utils/ofConstants.h OF_VERSION_MAJOR REGEX "^(#define OF_VERSION_MAJOR)")
file(STRINGS libs/openFrameworks/utils/ofConstants.h OF_VERSION_MINOR REGEX "^(#define OF_VERSION_MINOR)")
file(STRINGS libs/openFrameworks/utils/ofConstants.h OF_VERSION_PATCH REGEX "^(#define OF_VERSION_PATCH)")
string(REPLACE "#define OF_VERSION_MAJOR " "" OF_VERSION_MAJOR ${OF_VERSION_MAJOR})
string(REPLACE "#define OF_VERSION_MINOR " "" OF_VERSION_MINOR ${OF_VERSION_MINOR})
string(REPLACE "#define OF_VERSION_PATCH " "" OF_VERSION_PATCH ${OF_VERSION_PATCH})
set(OF_VERSION ${OF_VERSION_MAJOR}.${OF_VERSION_MINOR}.${OF_VERSION_PATCH})
# ========================================================

# ===================== Compiler Flags =====================
set(CMAKE_C_COMPILER "/usr/bin/clang")
set(CMAKE_C_FLAGS "") # -x objective-c

set(CMAKE_CXX_COMPILER "/usr/bin/clang++")

if (${OF_VERSION} EQUAL "0.9.0")
    set(CMAKE_CXX_FLAGS "-std=c++11 -stdlib=libc++ -D__MACOSX_CORE__") # Removed "-stdlib=libstdc++
endif ()

set(CMAKE_OSX_ARCHITECTURES i386)
add_compile_options(-Wno-deprecated-declarations)
# ==========================================================

# ===================== Source Files =====================
set(OF_SOURCE_FILES
        libs/openFrameworks/3d/of3dPrimitives.cpp
        libs/openFrameworks/3d/of3dUtils.cpp
        libs/openFrameworks/3d/ofCamera.cpp
        libs/openFrameworks/3d/ofEasyCam.cpp
        libs/openFrameworks/3d/ofMesh.cpp
        libs/openFrameworks/3d/ofNode.cpp
        libs/openFrameworks/app/ofAppGLFWWindow.cpp
        libs/openFrameworks/app/ofAppGlutWindow.cpp
        libs/openFrameworks/app/ofAppNoWindow.cpp
        libs/openFrameworks/app/ofAppRunner.cpp
        libs/openFrameworks/communication/ofArduino.cpp
        libs/openFrameworks/communication/ofSerial.cpp
        libs/openFrameworks/events/ofEvents.cpp
        libs/openFrameworks/gl/ofFbo.cpp
        libs/openFrameworks/gl/ofGLProgrammableRenderer.cpp
        libs/openFrameworks/gl/ofGLRenderer.cpp
        libs/openFrameworks/gl/ofGLUtils.cpp
        libs/openFrameworks/gl/ofLight.cpp
        libs/openFrameworks/gl/ofMaterial.cpp
        libs/openFrameworks/gl/ofShader.cpp
        libs/openFrameworks/gl/ofTexture.cpp
        libs/openFrameworks/gl/ofVbo.cpp
        libs/openFrameworks/gl/ofVboMesh.cpp
        libs/openFrameworks/graphics/of3dGraphics.cpp
        libs/openFrameworks/graphics/ofBitmapFont.cpp
        libs/openFrameworks/graphics/ofCairoRenderer.cpp
        libs/openFrameworks/graphics/ofGraphics.cpp
        libs/openFrameworks/graphics/ofImage.cpp
        libs/openFrameworks/graphics/ofPath.cpp
        libs/openFrameworks/graphics/ofPixels.cpp
        libs/openFrameworks/graphics/ofPolyline.cpp
        libs/openFrameworks/graphics/ofRendererCollection.cpp
        libs/openFrameworks/graphics/ofTessellator.cpp
        libs/openFrameworks/graphics/ofTrueTypeFont.cpp
        libs/openFrameworks/math/ofMath.cpp
        libs/openFrameworks/math/ofMatrix3x3.cpp
        libs/openFrameworks/math/ofMatrix4x4.cpp
        libs/openFrameworks/math/ofQuaternion.cpp
        libs/openFrameworks/math/ofVec2f.cpp
        libs/openFrameworks/math/ofVec4f.cpp
        libs/openFrameworks/sound/ofFmodSoundPlayer.cpp
        libs/openFrameworks/sound/ofOpenALSoundPlayer.cpp
        libs/openFrameworks/sound/ofRtAudioSoundStream.cpp
        libs/openFrameworks/sound/ofSoundPlayer.cpp
        libs/openFrameworks/sound/ofSoundStream.cpp
        libs/openFrameworks/types/ofBaseTypes.cpp
        libs/openFrameworks/types/ofColor.cpp
        libs/openFrameworks/types/ofParameter.cpp
        libs/openFrameworks/types/ofParameterGroup.cpp
        libs/openFrameworks/types/ofRectangle.cpp
        libs/openFrameworks/utils/ofFileUtils.cpp
        libs/openFrameworks/utils/ofLog.cpp
        libs/openFrameworks/utils/ofMatrixStack.cpp
        libs/openFrameworks/utils/ofSystemUtils.cpp
        libs/openFrameworks/utils/ofThread.cpp
        libs/openFrameworks/utils/ofURLFileLoader.cpp
        libs/openFrameworks/utils/ofUtils.cpp
        libs/openFrameworks/utils/ofXml.cpp
        libs/openFrameworks/video/ofQTKitGrabber.mm
        libs/openFrameworks/video/ofQTKitMovieRenderer.m
        libs/openFrameworks/video/ofQTKitPlayer.mm
        libs/openFrameworks/video/ofQtUtils.cpp
        libs/openFrameworks/video/ofQuickTimeGrabber.cpp
        libs/openFrameworks/video/ofQuickTimePlayer.cpp

        # TODO: Not working right now
        # ======== For Windows ========
        # libs/openFrameworks/video/ofDirectShowGrabber.cpp
        # libs/openFrameworks/video/ofDirectShowPlayer.cpp
        # ======== For Linux ========
        # libs/openFrameworks/video/ofGstUtils.cpp
        # libs/openFrameworks/video/ofGstVideoGrabber.cpp
        # libs/openFrameworks/video/ofGstVideoPlayer.cpp
        )
if (${OF_VERSION} EQUAL "0.9.0")
    list(APPEND OF_SOURCE_FILES
            libs/openFrameworks/app/ofMainLoop.cpp
            libs/openFrameworks/gl/ofBufferObject.cpp
            libs/openFrameworks/sound/ofBaseSoundStream.cpp
            libs/openFrameworks/sound/ofSoundBuffer.cpp
            libs/openFrameworks/utils/ofFpsCounter.cpp
            libs/openFrameworks/utils/ofTimer.cpp
            libs/openFrameworks/video/ofVideoGrabber.cpp
            libs/openFrameworks/video/ofVideoPlayer.cpp
            libs/openFrameworks/video/ofAVFoundationVideoPlayer.m
            libs/openFrameworks/video/ofAVFoundationPlayer.mm
            )
endif ()
# ========================================================

# ===================== Include Dirs =====================
set(OF_CORE_HEADERS
        libs/openFrameworks
        libs/openFrameworks/3d
        libs/openFrameworks/app
        libs/openFrameworks/communication
        libs/openFrameworks/events
        libs/openFrameworks/gl
        libs/openFrameworks/graphics
        libs/openFrameworks/math
        libs/openFrameworks/sound
        libs/openFrameworks/types
        libs/openFrameworks/utils
        libs/openFrameworks/video
        libs/freetype/include
        libs/freetype/include/freetype2
        libs/poco/include
        libs/fmodex/include
        libs/glew/include
        libs/FreeImage/include
        libs/tess2/include
        libs/cairo/include/cairo
        libs/rtAudio/include
        libs/glfw/include
        libs/openssl/include
        libs/utf8cpp/include
        libs/boost/include
        )
# ========================================================

# ===================== Libs =====================
set(OF_CORE_LIBS
        ${PROJECT_SOURCE_DIR}/libs/glut/lib/osx/GLUT.framework       # Use oF's GLUT
        ${PROJECT_SOURCE_DIR}/libs/fmodex/lib/osx/libfmodex.dylib
        ${PROJECT_SOURCE_DIR}/libs/FreeImage/lib/osx/freeimage.a
        ${PROJECT_SOURCE_DIR}/libs/freetype/lib/osx/freetype.a
        ${PROJECT_SOURCE_DIR}/libs/glew/lib/osx/glew.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoCrypto.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoData.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoDataSQLite.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoFoundation.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoNet.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoNetSSL.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoUtil.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoXML.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoZip.a
        ${PROJECT_SOURCE_DIR}/libs/rtAudio/lib/osx/rtAudio.a
        ${PROJECT_SOURCE_DIR}/libs/tess2/lib/osx/tess2.a
        ${PROJECT_SOURCE_DIR}/libs/cairo/lib/osx/cairo-script-interpreter.a
        ${PROJECT_SOURCE_DIR}/libs/cairo/lib/osx/cairo.a
        ${PROJECT_SOURCE_DIR}/libs/cairo/lib/osx/pixman-1.a
        ${PROJECT_SOURCE_DIR}/libs/openssl/lib/osx/crypto.a
        ${PROJECT_SOURCE_DIR}/libs/openssl/lib/osx/ssl.a
        )
if (${OF_VERSION} EQUAL "0.9.0")
    list(APPEND OF_CORE_LIBS
            ${PROJECT_SOURCE_DIR}/libs/glfw/lib/osx/glfw3.a             # Renamed in oF 0.9
            ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoJSON.a          # new in oF 0.9
            ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoMongoDB.a       # new in oF 0.9
            ${PROJECT_SOURCE_DIR}/libs/boost/lib/osx/boost.a            # new in oF 0.9
            ${PROJECT_SOURCE_DIR}/libs/boost/lib/osx/boost_filesystem.a # new in oF 0.9
            ${PROJECT_SOURCE_DIR}/libs/boost/lib/osx/boost_system.a     # new in oF 0.9
            )
elseif (${OF_VERSION} EQUAL "0.8.4")
    list(APPEND OF_CORE_LIBS
            ${PROJECT_SOURCE_DIR}/libs/glfw/lib/osx/libglfw3.a             # Renamed in oF 0.9
            ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoDataODBC.a
            )
endif ()
# ================================================

# ===================== System Frameworks =====================
set(FRAMEWORKS_DIR /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/System/Library/Frameworks)

find_library(accelerate_lib Accelerate)
find_library(iokit_lib IOKit)
find_library(agl_lib AGL)
find_library(applicationservices_lib ApplicationServices)
find_library(audiotoolbox_lib AudioToolbox)
find_library(coreaudio_lib CoreAudio)
find_library(corefoundation_lib CoreFoundation)
find_library(coreservices_lib CoreServices)
find_library(opengl_lib OpenGL)
find_library(quicktime_lib QuickTime)
find_library(corevideo_lib CoreVideo)
find_library(qtkit_lib QTKit)
find_library(cocoa_lib Cocoa)

set(OF_CORE_FRAMEWORKS
        ${accelerate_lib}
        ${iokit_lib}
        ${agl_lib}
        ${applicationservices_lib}
        ${audiotoolbox_lib}
        ${coreaudio_lib}
        ${corefoundation_lib}
        ${coreservices_lib}
        ${opengl_lib}
        ${quicktime_lib}
        ${corevideo_lib}
        ${qtkit_lib}
        ${cocoa_lib})

if (${OF_VERSION} EQUAL "0.9.0")
    find_library(coremedia_lib CoreMedia)       # new in oF 0.9
    find_library(avfoundation_lib AVFoundation) # new in oF 0.9
    find_library(quartzcore_lib QuartzCore)     # new in oF 0.9
    find_library(appkit_lib AppKit)             # new in oF 0.9

    list(APPEND OF_CORE_FRAMEWORKS
            ${coremedia_lib}     # new in oF 0.9
            ${avfoundation_lib}  # new in oF 0.9
            ${quartzcore_lib}    # new in oF 0.9
            ${appkit_lib})       # new in oF 0.9
endif ()
# =============================================================

# ==================== Addon Parameters =======================
set(INCLUDE_ADDONS "" CACHE PATH "Path to addons.cmake")
set(OF_DIRECTORY ${PROJECT_SOURCE_DIR})
if (EXISTS ${INCLUDE_ADDONS})
    include(${INCLUDE_ADDONS})
    foreach (addon_config ${OFX_ADDONS})
        include(addons/${addon_config}/addon_config.cmake)
    endforeach ()
endif ()
# =============================================================

set(OF_SOURCE_FILES ${OF_SOURCE_FILES} ${ADDON_SOURCE_FILES})
include_directories(${OF_CORE_HEADERS} ${OF_ADDON_HEADERS})

if (${OF_VERSION} EQUAL "0.9.0")
    set_source_files_properties(${OF_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "-x objective-c++") # Removed "-stdlib=libstdc++, added -x objective-c++
elseif (${OF_VERSION} EQUAL "0.8.4")
    set_source_files_properties(${OF_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "-stdlib=libstdc++ -x objective-c++") # Removed "-stdlib=libstdc++, added -x objective-c++
endif ()

add_library(core OBJECT ${OF_SOURCE_FILES})
add_library(of_shared SHARED $<TARGET_OBJECTS:core>)

if (${OF_VERSION} EQUAL "0.8.4")
    set_target_properties(of_shared PROPERTIES LINK_FLAGS "-stdlib=libstdc++")
endif ()
set_target_properties(of_shared PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
set_target_properties(of_shared PROPERTIES OUTPUT_NAME openFrameworks)

target_link_libraries(of_shared ${OF_CORE_FRAMEWORKS} ${OF_ADDON_FRAMEWORKS} ${OF_CORE_LIBS} ${OF_ADDON_LIBS})

install(FILES $<TARGET_FILE:of_shared> DESTINATION oF/lib)
install(FILES libs/fmodex/lib/osx/libfmodex.dylib DESTINATION oF/lib)
install(DIRECTORY libs/glut/lib/osx/GLUT.framework DESTINATION .)

ADD_CUSTOM_COMMAND(TARGET of_shared
        POST_BUILD
        COMMAND ${CMAKE_INSTALL_NAME_TOOL}
        ARGS -change ./libfmodex.dylib "@loader_path/libfmodex.dylib" $<TARGET_FILE:of_shared>
        )
