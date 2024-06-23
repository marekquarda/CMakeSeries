# Set uup a macro that increments a varoable 
macro(IncrementVariable VAR)
    math(EXPR ${VAR} "${${VAR}} + 1")
    #set(${VAR} ${${VAR}} PARENT_SCOPE)
endmacro()

# Define a variable
set(MyVariable 0)

# Call the macro to increment the variable
IncrementVariable(MyVariable)
# Print the value in the variable
message("MyVariable: ${MyVariable}")

# Call the macro to increment the variable
IncrementVariable(MyVariable)
# Print the value in the variable
message("MyVariable: ${MyVariable}")

#Write a loop that calls the Incrementvariable function twise
foreach(loop_var RANGE 1)
    message("loop_var: ${loop_var}")
    IncrementVariable(MyVariable)
endforeach()

message("MyVariable: ${MyVariable}")
