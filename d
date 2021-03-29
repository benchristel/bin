#!/bin/bash
# d      Lists available disks for this drive

n=$(git branch | wc -l | tr -d ' ')

if [ "$n" -gt 100 ]; then
  pager=less
  columnator=column
elif [ "$n" -gt 20 ]; then
  pager=cat
  columnator=column
else
  pager=cat
  columnator=cat
fi

git branch | grep -v '\( empty\| none\)$' | sed -e 's|\* |  |' | $columnator | $pager
