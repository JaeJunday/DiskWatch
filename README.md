# 42DiskUsage

## 터미널에 붙여넣으세요
``` shell
git clone git@github.com:JaeJunday/42DiskUsage
cd 42DiskUsage
make re
```
## 사용방법
``` shell
cache
```

## 오류정보
- oh-my-zsh을 사용하는 경우 zsh에 강제로 스크립트 삽입하는걸 위험한 동작으로 간주해서 제대로 동작하지 않을 수 있습니다.

## 사용예시
<img width="1126" alt="스크린샷 2023-09-17 오후 10 35 26" src="https://github.com/JaeJunday/42DiskUsage/assets/109643814/d59211ff-8e54-4c27-a65d-e30412dd9312">

## 주의사항
!스크립트 사용시 다음 캐시가 지워질 수 있으며 책임지지 않습니다.
``` shell
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
```
