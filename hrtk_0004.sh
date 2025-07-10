#!/bin/bash

# 1. Define variables
name="Alice"
age=30

# 2. Use variables
echo "Name: $name"
echo "Age: $age"

# 3. Read-only variable
readonly country="India"
echo "Country: $country"

# Attempting to change a readonly variable will cause an error (uncomment to test)
# country="USA"

# 4. Unset a variable
unset age
echo "Age after unset: $age"  # This will be empty

# 5. Variable with command substitution
today=$(date)
echo "Today is: $today"

# 6. Using variables in strings
echo "Hello, my name is ${name}, and I live in ${country}."

# 7. Default value if variable is empty
echo "My age is: ${age:-Not specified}"