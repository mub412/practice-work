#!/bin/bash

<<info
Loops: anything that you want to repeat again and again based on 
Conditions
for loops condition

1...10
start point = 1
end point = 10
increment/decrement = +/-

info

for (( num=1 ; num<=10 ; num++ ))
do
	echo "$num"
done

