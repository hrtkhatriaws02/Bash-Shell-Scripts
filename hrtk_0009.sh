#!/bin/bash

# 1. Create an array
my_array=("Apple" "Banana" "Cherry")

# 2. Print the whole array
echo "All elements: ${my_array[@]}"

# 3. Print a specific element
echo "First element: ${my_array[0]}"

# 4. Change an element
my_array[1]="Blueberry"
echo "After change: ${my_array[@]}"

# 5. Get the length of an element
echo "Length of first element: ${#my_array[0]}"

# 6. Get the number of elements
echo "Number of elements: ${#my_array[@]}"

# 7. Add elements
my_array+=("Dragonfruit" "Elderberry")
echo "After adding elements: ${my_array[@]}"

# 8. Loop through array elements
echo "Looping elements:"
for element in "${my_array[@]}"; do
  echo "$element"
done

# 9. Print indices
echo "Indices: ${!my_array[@]}"

# 10. Remove an element (unset)
unset my_array[2]
echo "After removing index 2: ${my_array[@]}"

# 11. Re-index the array (optional)
my_array=("${my_array[@]}")
echo "After re-indexing: ${my_array[@]}"

# 12. Access all elements with *
echo "All elements with *: ${my_array[*]}"

# 13. Slice the array (get subarray)
# Syntax: ${array[@]:start:length}
slice=("${my_array[@]:1:2}")
echo "Sliced elements (index 1 to 2): ${slice[@]}"