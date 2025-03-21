#!/bin/bash
#this is the demonstration of loops
for ((i=1;i<=5;i++))
do
	for((j=1;j<=i;j++))
	do
		echo -n "*"
	done
	echo
done
i=0
sum=0
while ((i<=10))
do
	sum=$((i+sum))
	i=$((i+1))
done
echo $sum
