#!/bin/bash

cd "${0%/*}"

. ~/Software/virtualenvs/rst/bin/activate

rm -f slides.rst

cat *.rst >>slides.rst

#--date --time 
rst2html5slides --traceback --strict --tab-width=4\
        --template templates/jmpress.html \
            slides.rst slides.html

#tidy -utf8 -i -o slides-tidy.html slides.html
open -a "Safari"  slides.html

