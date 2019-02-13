#!/bin/bash
ROOT=http://169.254.169.254/latest/meta-data/
FIELDS=`curl -s $ROOT | grep -v /`
for f in $FIELDS
do
  echo $f: `curl -s $ROOT$f`
done