#[[
        . Introduction : Everything in a signle target
        . Setting up static libraries
                . embedded
                . separated
        . Building individual targets
        . C++ standards at different granularities
]]

cmake_minimum_required(VERSION 3.20)

project(Rooster
        VERSION 1.0.0
        DESCRIPTION "The leading Hello World App"
        LANGUAGES CXX)   

set(CXX_STANDARD_REQUIRED ON)   # Make C++20 a hard requirement
set(CMAKE_CXX_STANDARD 23)      # Default C++ standard for targets         

message("The make version is ${CMAKE_VERSION}")
message("Builder: ${CMAKE_BUILD_TOOL}")
message("Build Libs: ${BUILD_SHARED_LIBS}")

set(OUR_PROJECT_VERSION "0.0.2")

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include(AddFmt)

# The math library
#add_library(libmath STATIC src/maths/supermath.cpp)        
#target_include_directories(libmath PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src/maths/include)
#include(src/maths/maths.cmake)
add_subdirectory(src/maths)

#add_library(libstats STATIC src/stats/stats.cpp)
#target_include_directories(libstats PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src/stats/include)
#target_link_libraries(libstats PRIVATE libmath)
#include(src/stats/stats.cmake)
add_subdirectory(src/stats)

set(SOURCE_FILES src/main.cpp 
                 src/information.cpp 
                 src/information.h
)

function(create_and_link_executable EXEC_NAME LIB_NAME SOURCES)
        add_executable(${EXEC_NAME} ${${SOURCES}})
        target_link_libraries(${EXEC_NAME} PUBLIC ${LIB_NAME})
        target_link_libraries(rooster PRIVATE fmt::fmt)
endfunction() 



FetchContent_MakeAvailable(fmt)

# The executable target
#add_executable(rooster ${SOURCE_FILES})
#target_link_libraries(rooster PUBLIC libstats)

create_and_link_executable(rooster libstats SOURCE_FILES)

message("Our project version is ${OUR_PROJECT_VERSION}")
message("Custom message: The compiler we're using is ${CMAKE_CXX_COMPILER}")
message("The processor architecture is $ENV{PROCESSOR_ARCHITECTURE}")

#add_executable(rooster src/main.cpp)
#target_link_libraries(rooster PUBLIC libstats)
#target_include_directories(HelloAppBinary PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
#arget_compile_features(HelloAppBinary PUBLIC cxx_std_20)
#target_link_libraries(HelloAppBinary PUBLIC operations)