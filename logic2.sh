#!/bin/bash

#sqlite3 test1.db 
#sqlite3 .mode csv
#sqlite3 .output testy1.csv
#sqlite3 select * from version;
#sqlite3 .output stdout
#sqlite3 .exit

version=$(sqlite3 /home/adminwa/folder/test1.db "SELECT * FROM version")

#echo "$version"

ls ~/folder/[0-9]*[!0-9]*.sql | egrep -o [0-9]+ | sort -n | tee list.txt
file="/home/adminwa/list.txt"

new=$(cat list.txt | tail -n 1)

while IFS= read -r line 
do
echo $line
if [ line -gt "$version" ]
then
echo $line
fi
done <"$file"
