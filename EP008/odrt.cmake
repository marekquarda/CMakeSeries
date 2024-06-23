# A macro modifying a variable in the global scope 
macro(ModifyGlobalVariables VAR1 VAR2)
    set(${VAR1} "New value for VAR1")
    set(${VAR2} "New value for VAR2")
endmacro()

# Define two global variables
set(GLOBAL_VAR1 "Original for VAR1")
set(GLOGAL_VAR2 "Original for VAR2")

message("Before macro call:")
message("GLOBAL_VAR1: ${GLOBAL_VAR1}")
message("GLOBAL_VAR2: ${GLOBAL_VAR2}")

# Call the function to modify the global variables
ModifyGlobalVariables(GLOBAL_VAR1 GLOBAL_VAR2)

message("After macro call:")
message("GLOBAL_VAR1: ${GLOBAL_VAR1}")
message("GLOBAL_VAR2: ${GLOBAL_VAR2}")