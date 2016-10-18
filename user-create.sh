#!/bin/bash

echo "Usage-  ./user-create.sh user1 user2 user3"

for u in $*
		do
			useradd $u
			echo Password1 | passwd --stdin $u
			passwd -e $u
		done
echo "Finished"			
