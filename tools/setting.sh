#!/bin/bash

# Find the line number containing "disk status"
line_number=$(grep -n "disk status" $HOME/.zshrc | cut -d: -f1)

# Check if "disk status" is found in the script
if [ -z "$line_number" ]; then
    echo "# disk status" >> $HOME/.zshrc
    echo "bash ~/.config/clear_cache.sh" >> $HOME/.zshrc
    echo "" >> $HOME/.zshrc
    echo "# cache alias" >> $HOME/.zshrc
    echo "alias cache='bash ~/.config/clear_cache.sh'" >> $HOME/.zshrc

    echo "Successfully add 'disk status' and the next line in zshrc."
    echo "Successfully add 'cache alias' and the next line in zshrc."
else
    echo "The 'disk status' line already in script."
fi
