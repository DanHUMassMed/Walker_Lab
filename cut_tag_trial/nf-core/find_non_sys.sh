#!/bin/bash
FIND=$1
find ./work -name "$FIND" -exec ls -F {} \;|grep -v '@'