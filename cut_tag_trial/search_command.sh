#!/bin/bash

# CHECK COMMANDLINE PARAMS
if [ -n "$1" ]; then
    SEARCH="$1"
else
    echo "Search criteria is required"
    exit 1
fi

if [ -n "$2" ]; then
    echo "Setting file name to .command.run"
    FILE_NM=".command.run"
else
    echo "Setting file name to .command.sh"
    FILE_NM=".command.sh"
fi

if [ "$FILE_NM" = ".command.run" ]; then
    SEARCH="^# NEXTFLOW TASK:.*${SEARCH}"
fi

# SETUP RUN
rm -f found*.txt
rm -f cleanup_work.sh
touch cleanup_work.sh
chmod +x cleanup_work.sh

count=1
for d in `find ./work -name ${FILE_NM}`;
do 
    found=`cat $d|grep "${SEARCH}"`;
    if [ -n "$found" ];
    then
        echo $d;
        echo $found;
        echo "rm -rf `dirname $d`" >>cleanup_work.sh
        cat $d > found${count}.sh;
        line_to_insert="# cd `dirname $d`"
        sed -i "2i\\$line_to_insert" found${count}.sh
        count=$((count + 1))
    fi
done

