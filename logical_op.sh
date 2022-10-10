#!/bin/bash

#{ ls ; pwd ; date }

which apache2 | { echo "Apache2 is installed in the host machine"; echo "The Apache2 version is : $(apache2 -v)"; }
echo
which apache2 && { echo "Apache2 is installed in the host machine"; echo "The Apache2 version is : $(apache2 -v)"; }
echo
which apache2 2>&1 1>/dev/null && { echo "Apache2 is installed in the host machine" ; echo "The Apache2 version is : $(apache2 -v)" ; } || echo "The Apache2 is not installed in the system"

