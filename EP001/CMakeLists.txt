cmake_minimum_required(VERSION 3.5)
project(HelloApp
        VERSION 1.0.0
        DESCRIPION "The leading Hello World App"
        LANGUAGES CXX)       

#List your sources
add_executable(HelloBinary main.cpp 
                src/dog.cpp
                src/operations.cpp)

target_compile_features(HelloBinary PRIVATE cxx_std_20)              
target_include_directories(HelloBinary PRIVATE ${CMAKE_CURRENT_BINARY_DIR/include()})