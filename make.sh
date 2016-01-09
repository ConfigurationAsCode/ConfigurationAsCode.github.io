#!/bin/bash

cat *.rst >>slides.rst

rst2html5slides --traceback --strict --tab-width=4\
            --template templates/jmpress.html \
                        slides.rst index.html

ls -la index.html

rm -f slides.rst

