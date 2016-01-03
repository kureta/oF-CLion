set(Assimp_SOURCES
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/ofxAssimpAnimation.cpp
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/ofxAssimpMeshHelper.cpp
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/ofxAssimpModelLoader.cpp
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/ofxAssimpTexture.cpp
        )

set(Assimp_HEADERS
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/libs/assimp/include
        )

set(Assimp_LIBRARIES
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/libs/assimp/lib/osx/assimp.a
        )

list(APPEND ADDON_SOURCE_FILES ${Assimp_SOURCES})
list(APPEND OF_ADDON_HEADERS ${Assimp_HEADERS})
list(APPEND OF_ADDON_LIBS ${Assimp_LIBRARIES})
