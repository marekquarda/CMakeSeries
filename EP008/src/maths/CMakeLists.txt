# The math library
add_library(libmath STATIC supermath.cpp)        
target_include_directories(libmath PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

#Other checks we can do

#EQUAL
if(2 EQUAL 1)
    message("2 EQUAL 1")
else()
    message("2 NOT EQUAL 1")
endif()

#LESS
 set(DOG 13)
 set(PIG 12)
if(PIG LESS DOG)
    message("PIG LESS THAN DOG")
else()
    message("PIG NOT LESS THAN DOG")
endif()

#STRLESS_EQUAL
if(PIG STRLESS_EQUAL DOG)
    message("PIG LESS THAN OR EQUAL TO DOG")
else()
    message("PIG NOT LESS THAN OR EQUAL TO DOG")
endif()