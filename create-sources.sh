#!/bin/bash

pygmentize () {
	FILE=$1
	CODE=$2
	echo ".. code:: ${CODE}" >src/${FILE}
	echo "    " >>src/${FILE}
	echo "    # ${FILE}:" >>src/${FILE}
	while IFS='' read -r line; do 
		printf "    %.100s\n" "$line">>src/${FILE}
	done < ${FILE}
}

pygmentize .travis.yml yaml
pygmentize make.sh bash
pygmentize create-sources.sh bash
pygmentize deploy.sh bash
pygmentize requirements.txt bash

