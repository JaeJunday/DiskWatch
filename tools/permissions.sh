#! /bin/bash

# Execute Permissions
if [ ! -f "$HOME/.config/clear_cache.sh" ]; then
    chmod +x tools/clear_cache.sh
    chmod +x tools/setting.sh
    chmod +x tools/remove.sh

    mkdir -p $HOME/.config
    cp tools/clear_cache.sh $HOME/.config/
    cp tools/setting.sh $HOME/.config/
    cp tools/remove.sh $HOME/.config/
fi
