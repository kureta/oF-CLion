list(APPEND ADDON_SOURCE_FILES
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCL.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLBuffer.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLImage.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLKernel.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLMemoryObject.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLProgram.cpp
    )

list(APPEND OF_ADDON_HEADERS
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/
    )

find_library(opencl_lib OpenCL)

list(APPEND OF_ADDON_FRAMEWORKS
    ${opencl_lib}
    )
