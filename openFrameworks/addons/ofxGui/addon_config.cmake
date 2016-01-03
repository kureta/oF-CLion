set(Gui_SOURCES
        ${OF_DIRECTORY}/addons/ofxGui/src/ofxBaseGui.cpp
        ${OF_DIRECTORY}/addons/ofxGui/src/ofxButton.cpp
        ${OF_DIRECTORY}/addons/ofxGui/src/ofxGuiGroup.cpp
        ${OF_DIRECTORY}/addons/ofxGui/src/ofxLabel.cpp
        ${OF_DIRECTORY}/addons/ofxGui/src/ofxPanel.cpp
        ${OF_DIRECTORY}/addons/ofxGui/src/ofxSlider.cpp
        ${OF_DIRECTORY}/addons/ofxGui/src/ofxSliderGroup.cpp
        ${OF_DIRECTORY}/addons/ofxGui/src/ofxToggle.cpp
        )

set(Gui_HEADERS
        ${OF_DIRECTORY}/addons/ofxGui/src
        )

list(APPEND ADDON_SOURCE_FILES ${Gui_SOURCES})
list(APPEND OF_ADDON_HEADERS ${Gui_HEADERS})
