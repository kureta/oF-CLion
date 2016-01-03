set(Kinect_SOURCES
		${OF_DIRECTORY}/addons/ofxKinect/src/ofxKinect.cpp
		${OF_DIRECTORY}/addons/ofxKinect/src/extra/ofxKinectExtras.cpp

        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/audio.c
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/cameras.c
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/core.c
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/flags.c
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/keep_alive.c
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/loader.c
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/registration.c
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/tilt.c
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/usb_libusb10.c
        )

set(Kinect_HEADERS
		${OF_DIRECTORY}/addons/ofxKinect/src
		${OF_DIRECTORY}/addons/ofxKinect/src/extra
		${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/include
		${OF_DIRECTORY}/addons/ofxKinect/libs/libusb-1.0/include/libusb-1.0
        )

set(Kinect_LIBRARIES
		${OF_DIRECTORY}/addons/ofxKinect/libs/libusb-1.0/lib/osx/usb-1.0.a
)

list(APPEND ADDON_SOURCE_FILES ${Kinect_SOURCES})
list(APPEND OF_ADDON_HEADERS ${Kinect_HEADERS})
list(APPEND OF_ADDON_LIBS ${Kinect_LIBRARIES})
