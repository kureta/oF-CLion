list(APPEND ADDON_SOURCE_FILES
        ${OF_DIRECTORY}/addons/ofxSvg/src/ofxSvg.cpp
        ${OF_DIRECTORY}/addons/ofxSvg/libs/svgTiny/src/src_colors.cpp
        ${OF_DIRECTORY}/addons/ofxSvg/libs/svgTiny/src/svgtiny_gradient.cpp
        ${OF_DIRECTORY}/addons/ofxSvg/libs/svgTiny/src/svgtiny_list.cpp
        ${OF_DIRECTORY}/addons/ofxSvg/libs/svgTiny/src/svgtiny.cpp
        )

list(APPEND OF_ADDON_HEADERS
        ${OF_DIRECTORY}/addons/ofxSvg/src
        ${OF_DIRECTORY}/addons/ofxSvg/libs/svgTiny/src
        )
