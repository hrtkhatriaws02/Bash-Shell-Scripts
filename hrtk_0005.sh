#!/bin/bash

# 1. String
greeting="Hello World"
echo "String example: $greeting"

# 2. Integer
num1=5
num2=10

# Arithmetic using $(( ))
sum=$((num1 + num2))
product=$((num1 * num2))

echo "Integer example: $num1 + $num2 = $sum"
echo "Integer example: $num1 * $num2 = $product"

# 3. Array
fruits=("Apple" "Banana" "Cherry")

# Access elements
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"

# Array length
echo "Number of fruits: ${#fruits[@]}"

# Loop through array
echo "Listing fruits:"
for fruit in "${fruits[@]}"; do
  echo "$fruit"
done