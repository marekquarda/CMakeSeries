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
set(CMAKE_CXX_STANDARD 20)      # Default C++ standard for targets         

message("The make version is ${CMAKE_VERSION}")
message("Builder: ${CMAKE_BUILD_TOOL}")
message("Build Libs: ${BUILD_SHARED_LIBS}")

#Working with lists
set(STUDENTS1 Steve Marian Dave)
set(STUDENTS2 Curly;Boe;Victor;John)
set(STUDENTS3 "Marry Lily Domz")

message(${STUDENTS1})
message(${STUDENTS2})
message(${STUDENTS3})

list(LENGTH STUDENTS1 STUDENTS1_LENGTH)
message("STUDENTS1 has ${STUDENTS1_LENGTH}")

list(APPEND STUDENTS2 "Kurk")

list(LENGTH STUDENTS2 STUDENTS2_LENGTH)
message("STUDENTS2 has ${STUDENTS2_LENGTH} elements")

list(LENGTH STUDENTS3 STUDENTS3_LENGTH)
message("STUDENTS3 has ${STUDENTS3_LENGTH} elements")

list(GET STUDENTS2 2 THE_LEADER)
message("The leander is ${THE_LEADER}")

#The option command
option(OPTIMIZE "Do we want to optimize the operation")
message("Are we optimizing? ${OPTIMIZE}")

if (OPTIMIZE) 
        message("Wa are optimized.")
endif()

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

add_executable(rooster src/main.cpp)
target_link_libraries(rooster PUBLIC libstats)
#target_include_directories(HelloAppBinary PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
#arget_compile_features(HelloAppBinary PUBLIC cxx_std_20)
#target_link_libraries(HelloAppBinary PUBLIC operations)