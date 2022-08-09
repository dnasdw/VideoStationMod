#!/bin/sh

BASEDIR=$(dirname $0)
ARGV=""

escape()
{
	local ARG=$(echo -E $@ | sed "s/'/'\\\\''/g")
	echo \'$ARG\'
}


i=1
while [ $i -le $# ]; do
	eval ARG=\$\(escape \${$i}\)
	ARGV="$ARGV $ARG"
	i=`expr $i + 1`
done
#echo "$ARGV">>/volume1/\@appstore/VideoStation/plugins/syno_themoviedb/mod_args.txt


eval "/usr/bin/python3 "\
	"$BASEDIR/search.py $ARGV"

