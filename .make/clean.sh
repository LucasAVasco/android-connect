#!/bin/bash


# Main directory
rm *~ .*~ 2> '/dev/null'

# '.make/' directory
rm .make/*~ .make/.*~ 2> '/dev/null'

# 'interface/' directory
rm interface/*~ interface/.*~ 2> '/dev/null'

# 'rsc/' directory
rm rsc/*~ rsc/.*~ 2> '/dev/null'

# Returns success
exit 0
