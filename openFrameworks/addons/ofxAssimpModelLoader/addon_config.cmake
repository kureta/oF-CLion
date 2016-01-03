list(APPEND ADDON_SOURCE_FILES
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/ofxAssimpAnimation.cpp
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/ofxAssimpMeshHelper.cpp
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/ofxAssimpModelLoader.cpp
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/ofxAssimpTexture.cpp
        )

list(APPEND OF_ADDON_HEADERS
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/src/
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/libs/assimp/include
        )

list(APPEND OF_ADDON_LIBS
        ${OF_DIRECTORY}/addons/ofxAssimpModelLoader/libs/assimp/lib/osx/assimp.a
        )
