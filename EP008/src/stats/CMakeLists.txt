add_library(libstats STATIC stats.cpp)
target_include_directories(libstats PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(libstats PRIVATE libmath)

# The if command 
#[==[
    Condition with the if command 
    . Generally, you pass the non dereferenced variable as a condition to the if commnad
    . Here is my understanding of the command:
        . If the variable is udefined: evaluate to false
        . If the variable is defined and set to false: evaluate to false
        . Otherwise evaluate to true
#]==]

#Variable expansion cmake docs
set(var1 OFF)
set(var2 "var1")
if(${var2})
    message("var2 is true")
else()
    message("var2 is false")
endif()

if(var2)
    message("var2 is true")
else()
    message("var2 is false")
endif()