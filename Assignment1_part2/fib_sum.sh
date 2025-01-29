#! /bin/bash
a=1
b=1
d=0
sum=$((a+b))
echo "Enter range:"
read n
echo "The fibonacci series is:"
echo "$a"
echo "$b"
for((c-2;c<n;c++))
do
	d=$((a+b))
	echo "$d"
	sum=$((sum+d))
	a=$b
	b=$d
done
echo "Sum of first $n numbers in the fibonacci series is $sum"
