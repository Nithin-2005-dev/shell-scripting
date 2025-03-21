#!/bin/bash
fact(){
if (($1==0));
then 
	echo 1
else
	local temp=$(fact $(($1 - 1)))
        echo $(($1 * temp))
fi
}

echo $(fact 5)
