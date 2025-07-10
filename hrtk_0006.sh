#!/bin/bash

echo "=== Comparison Operators ==="
a=5; b=3
[ "$a" -eq "$b" ] && echo "$a equals $b" || echo "$a not equal to $b"
[ "$a" -ne "$b" ] && echo "$a != $b"
[ "$a" -lt "$b" ] && echo "$a < $b"
[ "$a" -le "$b" ] && echo "$a ≤ $b"
[ "$a" -gt "$b" ] && echo "$a > $b"
[ "$a" -ge "$b" ] && echo "$a ≥ $b"

echo -e "\n=== String Comparison Operators ==="
str1="apple"; str2="banana"
[ "$str1" = "$str2" ] && echo "equal" || echo "not equal"
[ "$str1" != "$str2" ] && echo "not equal confirm"
[ "$str1" \< "$str2" ] && echo "\"$str1\" is before \"$str2\" in ASCII"
[ "$str2" \> "$str1" ] && echo "\"$str2\" is after \"$str1\" in ASCII"

echo -e "\n=== Arithmetic Operators ==="
num1=10; num2=4
echo "add: $(( num1 + num2 ))"
echo "sub: $(( num1 - num2 ))"
echo "mul: $(( num1 * num2 ))"
echo "div: $(( num1 / num2 ))"
echo "mod: $(( num1 % num2 ))"

echo -e "\n=== Exponentiation via awk (as recommended) ==="
echo "pow: $(awk "BEGIN{print $num1^$num2}")"

echo -e "\n=== Logical Operators (&&, ||, !) ==="
[ "$a" -gt 0 ] && [ "$b" -gt 0 ] && echo "Both positive"
[ "$a" -lt 0 ] || echo "At least one is not negative"
! [ "$a" -lt 0 ] && echo "a is not negative"

echo -e "\n=== File Test Operators ==="
testfile="/etc/passwd"
[ -e "$testfile" ] && echo "$testfile exists"
[ -f "$testfile" ] && echo "$testfile is a regular file"
[ -d "/etc" ] && echo "/etc is a directory"
[ -s "$testfile" ] && echo "$testfile is not empty"

echo -e "\n=== Combined use ==="
filename="demo.txt"
echo "Hello" > "$filename"

if [ -e "$filename" ] && [ ! -s "$filename" ]; then
  echo "$filename exists but is empty"
else
  echo "$filename exists and is not empty, size: $(wc -c < "$filename") bytes"
fi

# Cleanup
rm "$filename"
