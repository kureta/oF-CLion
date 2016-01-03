set(VectorGraphics_SOURCES
        ${OF_DIRECTORY}/addons/ofxVectorGraphics/src/ofxVectorGraphics.cpp
        ${OF_DIRECTORY}/addons/ofxVectorGraphics/libs/CreEPS.cpp
        )

set(VectorGraphics_HEADERS
        ${OF_DIRECTORY}/addons/ofxVectorGraphics/src
        ${OF_DIRECTORY}/addons/ofxVectorGraphics/libs
        )

list(APPEND ADDON_SOURCE_FILES ${VectorGraphics_SOURCES})
list(APPEND OF_ADDON_HEADERS ${VectorGraphics_HEADERS})
