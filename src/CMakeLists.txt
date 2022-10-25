set(LIBRARY_NAME "udp-test-lib")
SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build/)
file(GLOB LIBRARY_SRCS *.cpp)

if(BUILD_SHARED)
    add_library(${LIBRARY_NAME} SHARED ${LIBRARY_SRCS} )
else()
    add_library(${LIBRARY_NAME} SATTIC ${LIBRARY_SRCS} )
endif()
