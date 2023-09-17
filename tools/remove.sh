#!/bin/bash

line_number=$(grep -n "disk status" $HOME/.zshrc | cut -d: -f1)
if [ -n "$line_number" ]; then
    next_line_number=$((line_number + 1))
    line_to_delete=$((line_number + 2))
    sed -i.bak "${line_number},${line_to_delete}d" $HOME/.zshrc
    echo "Successfully removed 'disk status' and the next line in zshrc."
else
    echo "The 'disk status' line was not found in the script."
fi

line_number=$(grep -n "cache alias" $HOME/.zshrc | cut -d: -f1)
if [ -n "$line_number" ]; then
    next_line_number=$((line_number + 1))
    line_to_delete=$((line_number + 2))
    sed -i.bak "${line_number},${line_to_delete}d" $HOME/.zshrc
    echo "Successfully removed 'cache alias' and the next line in zshrc."
else
    echo "The 'cache alias' line was not found in the script."
fi
