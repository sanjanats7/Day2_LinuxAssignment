#! /bin/sh

echo "Enter first number:"
read a
echo "enter second number:"
read b
b=$((a+b))
a=$((b-a))
b=$((b-a))
echo "The swapped numbers are:"
echo $a
echo $b
