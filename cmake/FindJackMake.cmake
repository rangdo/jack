# FindJackMake.cmake - Module to locate jack-make executable

function(find_jack_make)
    # Search for jack-make in these locations (in order):
    # 1. User-specified path via JACK_MAKE_PATH environment variable
    # 2. Standard system PATH
    # 3. Common installation prefixes (/usr/local/bin, /opt/local/bin, etc.)
    # 4. Local build directory in source tree

    if(DEFINED ENV{JACK_MAKE_PATH})
        find_program(JACK_MAKE_EXE 
            NAMES jack-make
            PATHS $ENV{JACK_MAKE_PATH}
            NO_DEFAULT_PATH
        )
    endif()

    if(NOT JACK_MAKE_EXE)
        find_program(JACK_MAKE_EXE NAMES jack-make)
    endif()

    if(NOT JACK_MAKE_EXE)
        find_program(JACK_MAKE_EXE
            NAMES jack-make
            PATHS /usr/local/bin /opt/local/bin /usr/bin /opt/homebrew/bin
        )
    endif()

    if(NOT JACK_MAKE_EXE)
        find_program(JACK_MAKE_EXE
            NAMES jack-make
            PATHS ${CMAKE_SOURCE_DIR}/jack_make/target/release
            NO_DEFAULT_PATH
            REQUIRED
        )
    endif()

    set(JACK_MAKE_EXE ${JACK_MAKE_EXE} PARENT_SCOPE)
    set(JACK_MAKE_VERSION ${JACK_MAKE_VERSION} PARENT_SCOPE)
endfunction()
