.. code:: bash
    
    # make.sh:
    #!/bin/bash
    
    . ./create-sources.sh
    
    cat *.rst >>slides.rst
    
    rst2html5slides --traceback --strict --tab-width=4\
                --template templates/jmpress.html \
                            slides.rst index.html
    
    rm -f slides.rst
    
