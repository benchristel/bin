#!/bin/bash
#doc: f      Lists files on disk
ls | cat

echo "$(ls | wc -l | tr -d ' ') FILES"
