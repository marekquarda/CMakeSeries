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

# The math library
add_library(libmath STATIC src/maths/supermath.cpp)        
target_include_directories(libmath PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src/maths/include)

add_library(libstats STATIC src/stats/stats.cpp)
target_include_directories(libstats PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src/stats/include)
target_link_libraries(libstats PRIVATE libmath)

add_executable(rooster src/main.cpp)
target_link_libraries(rooster PUBLIC libstats)
#target_include_directories(HelloAppBinary PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
#arget_compile_features(HelloAppBinary PUBLIC cxx_std_20)
#target_link_libraries(HelloAppBinary PUBLIC operations)