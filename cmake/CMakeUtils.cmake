#* Author: Wady <iswady@163.com>
#* Date:   Wed May 15 12:00:00 2019

# Reference from Belledonne Communications, Grenoble France.
macro(utils_apply_compile_flags SOURCE_FILES)
    if(${SOURCE_FILES})
        set(options "")
        foreach(a ${ARGN})
            if(${a})
                string(REPLACE ";" " " options_${a} "${${a}}")
                set(options "${options} ${options_${a}}")
            endif()
        endforeach()
        if(options)
            set_source_files_properties(${${SOURCE_FILES}} PROPERTIES COMPILE_FLAGS "${options}")
        endif()
    endif()
endmacro()
