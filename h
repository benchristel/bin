#!/bin/bash
#doc: h      Prints this help text.

find ~/bin/* -perm +100 -exec grep -h '^#doc: ' {} \; 2>/dev/null | sed -e 's/^#doc: //'
