set(OFX_ADDONS
        "ofxOpenCv"
        )

foreach (addon_config ${OFX_ADDONS})
    include(${OF_DIRECTORY}/addons/${addon_config}/addon_config.cmake)
endforeach ()
