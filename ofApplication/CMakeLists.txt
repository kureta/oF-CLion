cmake_minimum_required(VERSION 2.8.4)
cmake_policy(SET CMP0042 NEW)
project(ofApplication)
set(APP_NAME ofApplication)
set(BUNDLE_NAME "ofApplication")

# ===================== oF Directory =====================
set(OF_DIRECTORY "/Users/kureta/Documents/Cpp/of_v0.9.0" CACHE PATH "OpenFrameworks path")
# ========================================================

# ===================== Compiler Flags =====================
set(CMAKE_C_COMPILER "/usr/bin/clang")
set(CMAKE_C_FLAGS "") # -x objective-c

set(CMAKE_CXX_COMPILER "/usr/bin/clang++")
set(CMAKE_CXX_FLAGS "-std=c++11 -stdlib=libc++ -D__MACOSX_CORE__") # Removed "-stdlib=libstdc++

set(CMAKE_OSX_ARCHITECTURES i386)
add_compile_options(-Wno-deprecated-declarations)
# ==========================================================

# ===================== Source Files =====================
set(SOURCE_FILES
        src/main.cpp
        src/ofApp.cpp)
# ========================================================

# === Include OpenFrameworks as an External Project ======
set(of_install_dir ${PROJECT_SOURCE_DIR}/bin/${APP_NAME}.app/Contents/Frameworks)
include(ExternalProject)
ExternalProject_Add(
        of_shared
        SOURCE_DIR ${OF_DIRECTORY}
        INSTALL_DIR ${of_install_dir}
        CMAKE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
        CMAKE_CACHE_ARGS -DINCLUDE_ADDONS:STRING=${PROJECT_SOURCE_DIR}/addons.cmake
)
# ================================================

# ===================== System Frameworks =====================
find_library(opengl_lib OpenGL)
# =============================================================

# ==================== Addons ====================
include(addons.cmake)
# ================================================

# ===================== Include Dirs =====================
set(OF_CORE_HEADERS
        ${OF_DIRECTORY}/libs/openFrameworks
        ${OF_DIRECTORY}/libs/openFrameworks/3d
        ${OF_DIRECTORY}/libs/openFrameworks/app
        ${OF_DIRECTORY}/libs/openFrameworks/communication
        ${OF_DIRECTORY}/libs/openFrameworks/events
        ${OF_DIRECTORY}/libs/openFrameworks/gl
        ${OF_DIRECTORY}/libs/openFrameworks/graphics
        ${OF_DIRECTORY}/libs/openFrameworks/math
        ${OF_DIRECTORY}/libs/openFrameworks/sound
        ${OF_DIRECTORY}/libs/openFrameworks/types
        ${OF_DIRECTORY}/libs/openFrameworks/utils
        ${OF_DIRECTORY}/libs/openFrameworks/video
        ${OF_DIRECTORY}/libs/freetype/include
        ${OF_DIRECTORY}/libs/freetype/include/freetype2
        ${OF_DIRECTORY}/libs/poco/include
        ${OF_DIRECTORY}/libs/fmodex/include
        ${OF_DIRECTORY}/libs/glew/include
        ${OF_DIRECTORY}/libs/FreeImage/include
        ${OF_DIRECTORY}/libs/tess2/include
        ${OF_DIRECTORY}/libs/cairo/include/cairo
        ${OF_DIRECTORY}/libs/rtAudio/include
        ${OF_DIRECTORY}/libs/glfw/include
        ${OF_DIRECTORY}/libs/openssl/include
        ${OF_DIRECTORY}/libs/utf8cpp/include
        ${OF_DIRECTORY}/libs/boost/include
        )
include_directories(${OF_CORE_HEADERS} ${OF_ADDON_HEADERS})
# ========================================================

# ============ Compile and Link ==================
add_executable(${APP_NAME} MACOSX_BUNDLE ${SOURCE_FILES})
add_dependencies(${APP_NAME} of_shared)
target_link_libraries(${APP_NAME} ${opengl_lib} ${of_install_dir}/of/lib/libopenFrameworks.dylib)
# ================================================

ADD_CUSTOM_COMMAND(TARGET ${APP_NAME}
        POST_BUILD
        COMMAND ${CMAKE_INSTALL_NAME_TOOL}
        ARGS -change "@rpath/libopenFrameworks.dylib" "@loader_path/../Frameworks/oF/lib/libopenFrameworks.dylib" $<TARGET_FILE:${APP_NAME}>
        )

set_target_properties(${APP_NAME} PROPERTIES MACOSX_BUNDLE_INFO_STRING "Cmake openFrameworks CLion test app")
set_target_properties(${APP_NAME} PROPERTIES MACOSX_BUNDLE_LONG_VERSION_STRING "0.0.1 pre-release alpha")
set_target_properties(${APP_NAME} PROPERTIES MACOSX_BUNDLE_BUNDLE_NAME ${BUNDLE_NAME})
set_target_properties(${APP_NAME} PROPERTIES MACOSX_BUNDLE_SHORT_VERSION_STRING 0.0.1)
set_target_properties(${APP_NAME} PROPERTIES MACOSX_BUNDLE_BUNDLE_VERSION 0.0.1)
set_target_properties(${APP_NAME} PROPERTIES MACOSX_BUNDLE_COPYRIGHT "--YOUR NAME HERE--")
set_target_properties(${APP_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
# ================================================

# ==================== Clean =====================
SET_DIRECTORY_PROPERTIES(PROPERTIES
        ADDITIONAL_MAKE_CLEAN_FILES ${PROJECT_SOURCE_DIR}/bin/${APP_NAME}.app)
# ================================================
