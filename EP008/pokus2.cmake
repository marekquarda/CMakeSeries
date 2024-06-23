# Foreach loop 
# Defina a list of names
set(names "Alice" "Bob" "Charlie" "David" "Eve" "Marra")

# Iterate through the list of names using a foreach loop
foreach(name ${names})
    message("Name: ${name}")
endforeach()

