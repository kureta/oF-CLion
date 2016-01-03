set(XmlSettings_SOURCES
        ${OF_DIRECTORY}/addons/ofxXmlSettings/src/ofxXmlSettings.cpp
        ${OF_DIRECTORY}/addons/ofxXmlSettings/libs/tinyxml.cpp
        ${OF_DIRECTORY}/addons/ofxXmlSettings/libs/tinyxmlerror.cpp
        ${OF_DIRECTORY}/addons/ofxXmlSettings/libs/tinyxmlparser.cpp
        )

set(XmlSettings_HEADERS
        ${OF_DIRECTORY}/addons/ofxXmlSettings/libs
        ${OF_DIRECTORY}/addons/ofxXmlSettings/src
        )

list(APPEND ADDON_SOURCE_FILES ${XmlSettings_SOURCES})
list(APPEND OF_ADDON_HEADERS ${XmlSettings_HEADERS})
