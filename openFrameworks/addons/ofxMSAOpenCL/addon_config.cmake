set(MSAOpenCL_SOURCES 
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCL.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLBuffer.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLImage.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLKernel.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLMemoryObject.cpp
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/MSAOpenCLProgram.cpp
    )

set(MSAOpenCL_HEADERS
    ${OF_DIRECTORY}/addons/ofxMSAOpenCL/src/
    )

find_library(opencl_lib OpenCL)

set(MSAOpenCL_FRAMEWORKS
    ${opencl_lib}
    )

list(APPEND ADDON_SOURCE_FILES ${MSAOpenCL_SOURCES})
list(APPEND OF_ADDON_HEADERS ${MSAOpenCL_HEADERS})
list(APPEND OF_ADDON_FRAMEWORKS ${MSAOpenCL_FRAMEWORKS})
