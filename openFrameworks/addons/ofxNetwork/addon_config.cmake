set(Network_SOURCES
        ${OF_DIRECTORY}/addons/ofxNetwork/src/ofxTCPClient.cpp
        ${OF_DIRECTORY}/addons/ofxNetwork/src/ofxTCPManager.cpp
        ${OF_DIRECTORY}/addons/ofxNetwork/src/ofxTCPServer.cpp
        ${OF_DIRECTORY}/addons/ofxNetwork/src/ofxUDPManager.cpp
        )

set(Network_HEADERS
        ${OF_DIRECTORY}/addons/ofxNetwork/src/
        )

list(APPEND ADDON_SOURCE_FILES ${Network_SOURCES})
list(APPEND OF_ADDON_HEADERS ${Network_HEADERS})
