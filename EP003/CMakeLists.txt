#[[
        . Introduction : Everything in a signle target
        . Setting up static libraries
                . embedded
                . separated
        . Building individual targets
        . C++ standards at different granularities
]]

cmake_minimum_required(VERSION 3.5)

project(HelloApp
        VERSION 1.0.0
        DESCRIPTION "The leading Hello World App"
        LANGUAGES CXX)   

set(CXX_STANDARD_REQUIRED ON)   # Make C++20 a hard requirement
set(CMAKE_CXX_STANDARD 20)      # Default C++ standard for targets         

add_library(operations STATIC src/operations.cpp)        
target_include_directories(operations PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
#target_compile_features(operations PUBLIC cxx_std_20)

add_executable(HelloAppBinary main.cpp 
                              src/dog.cpp 
                              src/log.cpp)
target_include_directories(HelloAppBinary PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
#arget_compile_features(HelloAppBinary PUBLIC cxx_std_20)
target_link_libraries(HelloAppBinary PUBLIC operations)