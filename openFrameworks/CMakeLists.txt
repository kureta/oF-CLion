cmake_minimum_required(VERSION 2.8.4)
cmake_policy(SET CMP0042 NEW)
project(OpenFrameworks)

# ===================== Compiler Flags =====================
set(CMAKE_C_COMPILER "/usr/bin/clang")
set(CMAKE_C_FLAGS "") # -x objective-c

set(CMAKE_CXX_COMPILER "/usr/bin/clang++")
set(CMAKE_CXX_FLAGS "-std=c++11 -stdlib=libc++ -D__MACOSX_CORE__") # Removed "-stdlib=libstdc++

set(CMAKE_OSX_ARCHITECTURES i386)
add_compile_options(-Wno-deprecated-declarations)
# ==========================================================

# ===================== Source Files =====================
set(OF_SOURCE_FILES
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/3d/of3dPrimitives.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/3d/of3dUtils.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/3d/ofCamera.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/3d/ofEasyCam.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/3d/ofMesh.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/3d/ofNode.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/app/ofAppGLFWWindow.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/app/ofAppGlutWindow.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/app/ofAppNoWindow.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/app/ofAppRunner.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/app/ofMainLoop.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/communication/ofArduino.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/communication/ofSerial.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/events/ofEvents.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofBufferObject.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofFbo.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofGLProgrammableRenderer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofGLRenderer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofGLUtils.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofLight.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofMaterial.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofShader.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofTexture.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofVbo.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl/ofVboMesh.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/of3dGraphics.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofBitmapFont.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofCairoRenderer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofGraphics.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofImage.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofPath.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofPixels.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofPolyline.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofRendererCollection.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofTessellator.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics/ofTrueTypeFont.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/math/ofMath.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/math/ofMatrix3x3.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/math/ofMatrix4x4.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/math/ofQuaternion.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/math/ofVec2f.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/math/ofVec4f.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/sound/ofBaseSoundStream.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/sound/ofFmodSoundPlayer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/sound/ofOpenALSoundPlayer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/sound/ofRtAudioSoundStream.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/sound/ofSoundBuffer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/sound/ofSoundPlayer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/sound/ofSoundStream.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/types/ofBaseTypes.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/types/ofColor.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/types/ofParameter.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/types/ofParameterGroup.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/types/ofRectangle.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofFileUtils.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofFpsCounter.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofLog.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofMatrixStack.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofSystemUtils.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofThread.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofTimer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofURLFileLoader.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofUtils.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils/ofXml.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofVideoGrabber.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofVideoPlayer.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofAVFoundationVideoPlayer.m
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofAVFoundationPlayer.mm
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofQTKitGrabber.mm
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofQTKitMovieRenderer.m
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofQTKitPlayer.mm
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofQtUtils.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofQuickTimeGrabber.cpp
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofQuickTimePlayer.cpp

        # TODO: Not working right now
        # ======== For Windows ========
        # ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofDirectShowGrabber.cpp
        # ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofDirectShowPlayer.cpp
        # ======== For Linux ========
        # ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofGstUtils.cpp
        # ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofGstVideoGrabber.cpp
        # ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video/ofGstVideoPlayer.cpp
        )
# ========================================================

# ===================== Include Dirs =====================
set(OF_CORE_HEADERS
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/3d
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/app
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/communication
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/events
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/gl
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/graphics
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/math
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/sound
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/types
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/utils
        ${PROJECT_SOURCE_DIR}/libs/openFrameworks/video
        ${PROJECT_SOURCE_DIR}/libs/freetype/include
        ${PROJECT_SOURCE_DIR}/libs/freetype/include/freetype2
        ${PROJECT_SOURCE_DIR}/libs/poco/include
        ${PROJECT_SOURCE_DIR}/libs/fmodex/include
        ${PROJECT_SOURCE_DIR}/libs/glew/include
        ${PROJECT_SOURCE_DIR}/libs/FreeImage/include
        ${PROJECT_SOURCE_DIR}/libs/tess2/include
        ${PROJECT_SOURCE_DIR}/libs/cairo/include/cairo
        ${PROJECT_SOURCE_DIR}/libs/rtAudio/include
        ${PROJECT_SOURCE_DIR}/libs/glfw/include
        ${PROJECT_SOURCE_DIR}/libs/openssl/include
        ${PROJECT_SOURCE_DIR}/libs/utf8cpp/include
        ${PROJECT_SOURCE_DIR}/libs/boost/include
        )
# ========================================================

# ===================== Libs =====================
set(OF_CORE_LIBS
        ${PROJECT_SOURCE_DIR}/libs/glut/lib/osx/GLUT.framework       # Use oF's GLUT
        ${PROJECT_SOURCE_DIR}/libs/fmodex/lib/osx/libfmodex.dylib
        ${PROJECT_SOURCE_DIR}/libs/glfw/lib/osx/glfw3.a                # Renamed in oF 0.9
        ${PROJECT_SOURCE_DIR}/libs/FreeImage/lib/osx/freeimage.a
        ${PROJECT_SOURCE_DIR}/libs/freetype/lib/osx/freetype.a
        ${PROJECT_SOURCE_DIR}/libs/glew/lib/osx/glew.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoCrypto.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoData.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoJSON.a           # new in oF 0.9
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoDataSQLite.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoFoundation.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoNet.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoNetSSL.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoUtil.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoXML.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoZip.a
        ${PROJECT_SOURCE_DIR}/libs/poco/lib/osx/PocoMongoDB.a       # new in oF 0.9
        ${PROJECT_SOURCE_DIR}/libs/rtAudio/lib/osx/rtAudio.a
        ${PROJECT_SOURCE_DIR}/libs/tess2/lib/osx/tess2.a
        ${PROJECT_SOURCE_DIR}/libs/cairo/lib/osx/cairo-script-interpreter.a
        ${PROJECT_SOURCE_DIR}/libs/cairo/lib/osx/cairo.a
        ${PROJECT_SOURCE_DIR}/libs/cairo/lib/osx/pixman-1.a
        ${PROJECT_SOURCE_DIR}/libs/openssl/lib/osx/crypto.a
        ${PROJECT_SOURCE_DIR}/libs/openssl/lib/osx/ssl.a
        ${PROJECT_SOURCE_DIR}/libs/boost/lib/osx/boost.a            # new in oF 0.9
        ${PROJECT_SOURCE_DIR}/libs/boost/lib/osx/boost_filesystem.a # new in oF 0.9
        ${PROJECT_SOURCE_DIR}/libs/boost/lib/osx/boost_system.a     # new in oF 0.9
        )
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
find_library(coremedia_lib CoreMedia)       # new in oF 0.9
find_library(avfoundation_lib AVFoundation) # new in oF 0.9
find_library(quartzcore_lib QuartzCore)     # new in oF 0.9
find_library(appkit_lib AppKit)             # new in oF 0.9

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
        ${cocoa_lib}
        ${coremedia_lib}     # new in oF 0.9
        ${avfoundation_lib}  # new in oF 0.9
        ${quartzcore_lib}    # new in oF 0.9
        ${appkit_lib})       # new in oF 0.9
# =============================================================

# ==================== Addon Parameters =======================
set(INCLUDE_ADDONS "" CACHE STRING "just wow!")
set(OF_DIRECTORY ${PROJECT_SOURCE_DIR})
if (EXISTS ${INCLUDE_ADDONS})
    include(${INCLUDE_ADDONS})
endif ()
# =============================================================

set(OF_SOURCE_FILES ${OF_SOURCE_FILES} ${ADDON_SOURCE_FILES})
include_directories(${OF_CORE_HEADERS} ${OF_ADDON_HEADERS})

set_source_files_properties(${OF_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "-x objective-c++") # Removed "-stdlib=libstdc++, added -x objective-c++

add_library(core OBJECT ${OF_SOURCE_FILES})
add_library(of_shared SHARED $<TARGET_OBJECTS:core>)

set_target_properties(of_shared PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
set_target_properties(of_shared PROPERTIES OUTPUT_NAME openFrameworks)

target_link_libraries(of_shared ${OF_CORE_FRAMEWORKS} ${OF_ADDON_FRAMEWORKS} ${OF_CORE_LIBS})

install(FILES $<TARGET_FILE:of_shared> DESTINATION oF/lib)
install(FILES libs/fmodex/lib/osx/libfmodex.dylib DESTINATION oF/lib)

ADD_CUSTOM_COMMAND(TARGET of_shared
        POST_BUILD
        COMMAND ${CMAKE_INSTALL_NAME_TOOL}
        ARGS -change ./libfmodex.dylib "@loader_path/libfmodex.dylib" $<TARGET_FILE:of_shared>
        )
