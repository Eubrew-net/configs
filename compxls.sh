#!/bin/sh

# Configure your favorite diff program here.
DIFF="/usr/local/Cellar/excel-compare/0.6.1/bin/excel_cmp"

# Subversion provides the paths we need as the sixth and seventh 
# parameters.
LEFT=${6}
RIGHT=${7}

# Call the diff command (change the following line to make sense for
# your merge program).
$DIFF  $LEFT  '/dev/null'

# Return an errorcode of 0 if no differences were detected, 1 if some were.
# Any other errorcode will be treated as fatal.
