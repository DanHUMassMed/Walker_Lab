#!/bin/bash
SEARCH="BOWTIE2_TARGET"
rm found*.sh
count=1
for d in `find ./work -name .command.sh`;
do 
    found=`cat $d|grep ${SEARCH}`;
    if [ -n "$found" ];
    then
        echo $d;
        echo $found;
        cat $d >found${count}.sh;
        count=$((count + 1))
    fi

done

