#!/bin/bash

# Simple if statement
a=5
b=3
if [ "$a" -gt "$b" ]; then
  echo "Simple if: $a is greater than $b"
fi

echo

# if...else
if [ "$a" -eq "$b" ]; then
  echo "if...else: $a equals $b"
else
  echo "if...else: $a does not equal $b"
fi

echo

# if...elif...else
if [ "$a" -eq "$b" ]; then
  echo "if...elif...else: equal"
elif [ "$a" -gt "$b" ]; then
  echo "if...elif...else: $a greater than $b"
else
  echo "if...elif...else: $a less than $b"
fi

echo

# Nested if
if [ "$a" -gt 0 ]; then
  echo "nested if: $a is positive"
  if [ "$a" -gt 10 ]; then
    echo "nested if: and greater than 10"
  else
    echo "nested if: but not greater than 10"
  fi
fi

echo

# case statement
read -p "Enter a number (1-3): " num
case $num in
  1)
    echo "case: You entered one"
    ;;
  2)
    echo "case: You entered two"
    ;;
  3)
    echo "case: You entered three"
    ;;
  *)
    echo "case: Invalid number"
    ;;
esac
