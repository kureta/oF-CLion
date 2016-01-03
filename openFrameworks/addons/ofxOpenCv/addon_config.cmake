list(APPEND ADDON_SOURCE_FILES
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvColorImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvContourFinder.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvFloatImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvGrayscaleImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvHaarFinder.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvImage.cpp
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/ofxCvShortImage.cpp
        )

list(APPEND OF_ADDON_HEADERS
        ${OF_DIRECTORY}/addons/ofxOpenCv/src/
        ${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/include
        ${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/include/opencv
        )

list(APPEND OF_ADDON_LIBS
        ${OF_DIRECTORY}/addons/ofxOpenCv/libs/opencv/lib/osx/opencv.a
        )
