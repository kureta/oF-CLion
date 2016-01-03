set(OpenCv_SOURCES
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvColorImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvContourFinder.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvFloatImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvGrayscaleImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvHaarFinder.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvShortImage.cpp
        )

set(OpenCv_HEADERS
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/
        ${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/include
        ${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/include/opencv
        )

set(OpenCv_LIBRARIES
        ${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/lib/osx/opencv.a
        )

list(APPEND ADDON_SOURCE_FILES ${OpenCv_SOURCES})
list(APPEND OF_ADDON_HEADERS ${OpenCv_HEADERS})
list(APPEND OF_ADDON_LIBS ${OpenCv_LIBRARIES})
