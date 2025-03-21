#!/bin/bash
<< comment
this code is to demonstrate if else statements
comment
read -p "enter number:" num
if (($num%2==0));
then
	echo "number is even"
else
	echo "number is odd"
fi

