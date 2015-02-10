#!/bin/bash
if [ $# -ne 0 ];then
	if [ -f $1 ];then
		echo "$1 existe deja"
		echo choisissez un autre nom de fichier :
		read a
		$0 $a
	else
		echo '<!doctype html>'>$1
		echo ' <html>'>> $1
		echo '     <head>'>> $1
		echo '         <meta name="description" content="File generated with Bash">'>> $1
		echo '         <meta name="keywords" content="HTML,CSS,XML,JavaScript">'>> $1
		echo '         <meta name="author" content="Alexandre Ravaux">'>> $1
		echo '         <meta charset="UTF-8">'>> $1
		echo '     </head>'>> $1
		echo '     <body>'>> $1
		echo '        <p>Default' $1 'created</p>'>> $1
		echo '     </body>'>> $1
		echo ' </html>'>> $1
	fi
else
	echo "usage : $0 [nom du fichier].html">&2
fi