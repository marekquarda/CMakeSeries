cmake_minimum_required(VERSION 3.5)
project(HelloApp
        VERSION 0.0.1
        DESCRIPTION "The leading Hello World App"
        LANGUAGES CXX)     
        
#Not recomended
#file(GLOB_RECURSE SRC_FILES src/*.cpp)        
#add_executable(HelloBinary main.cpp ${SRC_FILES})

#List your sources
#add_executable(HelloAppBinary main.cpp src/dog.cpp src/operations.cpp)

#GLOBING
file(GLOB_RECURSE SOURCE_FILES src/*.cpp)
add_executable(HelloAppBinary main.cpp ${SOURCE_FILES})

target_compile_features(HelloAppBinary PRIVATE cxx_std_20)              
target_include_directories(HelloAppBinary PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)