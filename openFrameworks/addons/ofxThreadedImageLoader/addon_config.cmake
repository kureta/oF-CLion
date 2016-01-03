set(ThreadedImageLoader_SOURCES
        ${OF_DIRECTORY}/addons/ofxThreadedImageLoader/src/ofxThreadedImageLoader.cpp
        )

set(ThreadedImageLoader_HEADERS
        ${OF_DIRECTORY}/addons/ofxThreadedImageLoader/src
        )

list(APPEND ADDON_SOURCE_FILES ${ThreadedImageLoader_SOURCES})
list(APPEND OF_ADDON_HEADERS ${ThreadedImageLoader_HEADERS})
