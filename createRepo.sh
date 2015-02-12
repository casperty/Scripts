#!/bin/bash
if [ $# -ne 0 ];then
	# if the repo already exists
	if [ -d $1 ];then
		echo "$1 already exists"
		echo choisissez un autre nom de fichier :
		read a
		$0 $a
	else
		# create some repo for css, js and pics files
		mkdir -p $1/media/css/../js/../img
		# create the default index.html
		./createDefaultHTMLPage.sh $1/index.html
	fi
else
	echo "usage : $0 [repository name]">&2
fi