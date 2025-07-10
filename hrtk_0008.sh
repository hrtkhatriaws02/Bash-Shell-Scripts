#!/bin/bash

echo "=== while loop ==="
count=1
while [ $count -le 3 ]; do
  echo "while: Count is $count"
  ((count++))
done

echo
echo "=== until loop ==="
count=1
until [ $count -gt 3 ]; do
  echo "until: Count is $count"
  ((count++))
done

echo
echo "=== for loop (C-style) ==="
for ((i=1; i<=3; i++)); do
  echo "for (C-style): i = $i"
done

echo
echo "=== for loop over a list ==="
for fruit in apple banana cherry; do
  echo "for (list): Fruit = $fruit"
done

echo
echo "=== for loop over an array ==="
fruits=("mango" "orange" "grape")
for item in "${fruits[@]}"; do
  echo "for (array): Fruit = $item"
done

echo
echo "=== select loop ==="
PS3="Select a fruit (1-3): "
select choice in "kiwi" "lemon" "pear"; do
  case $REPLY in
    1|2|3)
      echo "You selected: $choice"
      break
      ;;
    *)
      echo "Invalid selection"
      ;;
  esac
done
