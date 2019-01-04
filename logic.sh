ls ~/folder/[0-9]*[!0-9]*.sql | egrep -o [0-9]+ | tee list.txt

if(cat list.txt | tail -n 1 -gt cat versionID)
[

]



