#! /bin/bash

# Execute Permissions
chmod +x tools/clear_cache.sh
chmod +x tools/setting.sh
chmod +x tools/remove.sh

mkdir -p $HOME/.config
cp tools/clear_cache.sh $HOME/.config/
cp tools/setting.sh $HOME/.config/
cp tools/remove.sh $HOME/.config/
