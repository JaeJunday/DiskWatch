#!/bin/bash

# 이스케이프 컬러 시퀀스 
DELETE=$'\033[1A\033[K'
Red=$'\033[0;31m'
Green=$'\033[0;32m'
Yellow=$'\033[0;33m'
RESET=$'\033[0m'
Cyan=$'\033[0;36m'
B_BLACK="\033[30m"

BG_BLACK=$'\033[40m'
BG_RED=$'\033[41m'
BG_GREEN=$'\033[42m'
BG_YELLOW=$'\033[43m'
BG_BLUE=$'\033[44m'
BG_PURPLE=$'\033[45m'
BG_CYAN=$'\033[46m'
BG_WHITE=$'\033[47m'
B_BG_BLACK=$'\033[100m'
B_BG_RED=$'\033[101m'
B_BG_GREEN=$'\033[102m'
B_BG_YELLOW=$'\033[103m'
B_BG_BLUE=$'\033[104m'
B_BG_PURPLE=$'\033[105m'
B_BG_CYAN=$'\033[106m'
B_BG_WHITE=$'\033[107m'
REVERSE=$'\033[7m'

rm -rf ${HOME}/Library/Application\ Support/Code/User/workspaceStorage
rm -rf ${HOME}/Library/Application\ Support/Code/CachedExtensionVSIXs
rm -rf ${HOME}/Library/Application\ Support/Code/CachedData
rm -rf ${HOME}/Library/Application\ Support/Code/Cache
rm -rf ${HOME}/Library/Caches
rm -rf ${HOME}/Library/Application\ Support/discord/Cache
rm -rf ${HOME}/Library/Application\ Support/Caches
rm -rf ${HOME}/Library/Application\ Support/Slack/Cache
rm -rf ${HOME}/Library/Application\ Support/discord/Code\ Cache
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage
rm -rf ${HOME}/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/ScriptCache
rm -rf ${HOME}/Library/Application\ Support/Slack/Service\ Worker/CacheStorage
rm -rf ${HOME}/Library/Containers/com.apple.Safari/Data/Library/Caches
rm -rf ${HOME}/.Trash/*

# df -h 명령어 실행 및 마지막 줄 추출
df_output=$(df -h | tail -n 1)

# 컬러 선택
PERCENTAGE=$(echo "$df_output" | awk '{sub(/%$/, "", $5); print $5}')
color=""
if (( $(awk 'BEGIN {print ('"$PERCENTAGE"' < 50)}') )); then
    color=$B_BG_CYAN  # 초록색
elif (( $(awk 'BEGIN {print ('"$PERCENTAGE"' < 65)}') )); then
    color=$B_BG_GREEN  # 초록색
elif (( $(awk 'BEGIN {print ('"$PERCENTAGE"' < 80)}') )); then
    color=$B_BG_YELLOW
else
    color=$B_BG_RED
fi

# 필요한 정보 추출
df_GRAPH=$(df -m | tail -n 1)
total_g=$(echo "$df_GRAPH" | awk '{print $2}')
used_g=$(echo "$df_GRAPH" | awk '{print $3}')
PERCENTAGE_g=$(echo "$df_GRAPH" | awk '{sub(/%$/, "", $5); print $5}')

# 막대 그래프 생성
USAGE2=$(awk -v total=$total_g -v used=$used_g 'BEGIN {printf "%.0f", used / total * 25}')
for ((i=0; i<25; i++)); do
    if ((i < USAGE2)); then
        GRAPH+="$color $RESET"
    else
        GRAPH+="$B_BG_BLACK $RESET"
    fi
done

# 출력
printf $DELETE
printf "$GRAPH "
printf "$RESET$PERCENTAGE\e[0m %% $REVERSE$B_BLACK made by jaejkim $RESET\n"
