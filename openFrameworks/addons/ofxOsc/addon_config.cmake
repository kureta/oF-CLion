set(Osc_SOURCES
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscBundle.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscMessage.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscParameterSync.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscReceiver.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/src/ofxOscSender.cpp

        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc/OscOutboundPacketStream.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc/OscPrintReceivedElements.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc/OscReceivedElements.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc/OscTypes.cpp

        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip/IpEndpointName.cpp

        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip/posix/NetworkingUtils.cpp
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip/posix/UdpSocket.cpp
        )

set(Osc_HEADERS
        ${OF_DIRECTORY}/addons/ofxOsc/src/
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/osc
        ${OF_DIRECTORY}/addons/ofxOsc/libs/oscpack/src/ip
        )

list(APPEND ADDON_SOURCE_FILES ${Osc_SOURCES})
list(APPEND OF_ADDON_HEADERS ${Osc_HEADERS})
