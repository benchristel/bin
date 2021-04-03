#!/bin/bash
# h      Prints this help text.

find ~/bin/* -perm +100 -exec grep -h '^# ' {} \; 2>/dev/null
