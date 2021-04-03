#!/bin/bash
# f      Lists files on disk
ls | cat

echo "$(ls | wc -l | tr -d ' ') FILES"
