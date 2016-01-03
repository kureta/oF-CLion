list(APPEND ADDON_SOURCE_FILES
        ${OF_DIRECTORY}/addons/ofxXmlSettings/src/ofxXmlSettings.cpp
        ${OF_DIRECTORY}/addons/ofxXmlSettings/libs/tinyxml.cpp
        ${OF_DIRECTORY}/addons/ofxXmlSettings/libs/tinyxmlerror.cpp
        ${OF_DIRECTORY}/addons/ofxXmlSettings/libs/tinyxmlparser.cpp
        )

list(APPEND OF_ADDON_HEADERS
        ${OF_DIRECTORY}/addons/ofxXmlSettings/libs
        ${OF_DIRECTORY}/addons/ofxXmlSettings/src
        )
