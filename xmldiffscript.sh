#!/bin/sh
#Script to diff 2 xml files from command prompt
if [ $# -ne 2 ]
then
echo "Uses: ./xmldiffscript.sh oldfile newfile"
else
old=$1
new=$2
echo "old=$old, new=$new"
#echo "diff -w <(xmllint --format -recover ./$old|sort -u) <(xmllint --format -recover ./$new|sort -u) >$new.diff; cat $new.diff"
bash -c "$(echo "diff -w <(xmllint --format -recover ./$old|sort -u) <(xmllint --format -recover ./$new|sort -u) >$new.diff; cat $new.diff")"
fi
