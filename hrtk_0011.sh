#!/bin/bash

# Integer values
int1=15
int2=4

# Integer calculations
int_sum=$(echo "$int1 + $int2" | bc)
int_sub=$(echo "$int1 - $int2" | bc)
int_product=$(echo "$int1 * $int2" | bc)
int_div=$(echo "$int1 / $int2" | bc)
int_mod=$(echo "$int1 % $int2" | bc)

echo "Integer calculations:"
echo "$int1 + $int2 = $int_sum"
echo "$int1 - $int2 = $int_sub"
echo "$int1 * $int2 = $int_product"
echo "$int1 / $int2 = $int_div"
echo "$int1 % $int2 = $int_mod"

# Floating-point values
float1="15.5"
float2="4.2"

# Floating-point calculations
float_sum=$(echo "scale=2; $float1 + $float2" | bc)
float_sub=$(echo "scale=2; $float1 - $float2" | bc)
float_product=$(echo "scale=2; $float1 * $float2" | bc)
float_div=$(echo "scale=3; $float1 / $float2" | bc)

echo ""
echo "Floating-point calculations:"
echo "$float1 + $float2 = $float_sum"
echo "$float1 - $float2 = $float_sub"
echo "$float1 * $float2 = $float_product"
echo "$float1 / $float2 = $float_div"