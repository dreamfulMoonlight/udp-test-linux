SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build/)
file(GLOB example_srcs *.cpp)
set(Source_path ${PROJECT_SOURCE_DIR}/src)

message("XXX ${Source_path}")
foreach(example ${example_srcs})
    get_filename_component(example_target ${example} NAME_WE)
    add_executable(${example_target} ${example})
    target_include_directories(${example_target} PUBLIC ${Source_path})
    target_link_libraries(${example_target} PRIVATE 
        udp-test-lib
       )
endforeach()