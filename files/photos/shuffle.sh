#! /bin/bash


for f in `ls *.jpg`; do
    name=`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1`
    mv $f $name.jpg
done

c=1
for f in `ls *.jpg | shuf | shuf`; do
    mv $f $c.jpg
    let c=c+1
done
