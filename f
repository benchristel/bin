#!/bin/bash
# f      Lists files on disk
ls

echo "$(ls | wc -l | tr -d ' ') FILES"
