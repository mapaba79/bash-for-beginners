#!/bin/bash

read -p "Enter a positive integer: " n

sum=0

for ((i=2; i<=n; i+=2)); do
    sum=$((sum + i))
done

echo "Sum of even numbers from 2 to $n is $sum"