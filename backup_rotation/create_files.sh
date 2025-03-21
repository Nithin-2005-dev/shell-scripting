#!?bin/bash

pre= $(ls -1 / | wc -1)
for((i=pre;i<=pre+5;i++))
do
	echo "file $i" >> file$i
done
echo "5 new files created"
