# DiskWatch

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

## 사용예시
<img width="1126" alt="스크린샷 2023-09-17 오후 10 35 26" src="https://github.com/JaeJunday/42DiskUsage/assets/109643814/d59211ff-8e54-4c27-a65d-e30412dd9312">

## 오류정보
- oh-my-zsh을 사용하는 경우 zsh의 초기 부팅 스크립트와 충돌하여 제대로 동작하지 않을 수 있습니다.
- 경고 옵션을 꺼주시면 무관하게 동작합니다.
  
## 주의사항
! 스크립트 사용시 다음 캐시가 지워질 수 있습니다.
``` shell
Library/Application\ Support/Code/User/workspaceStorage
Library/Application\ Support/Code/CachedExtensionVSIXs
Library/Application\ Support/Code/CachedData
Library/Application\ Support/Code/Cache
Library/Caches
Library/Application\ Support/discord/Cache
Library/Application\ Support/Caches
Library/Application\ Support/Slack/Cache
Library/Application\ Support/discord/Code\ Cache
Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage
Library/Application\ Support/Google/Chrome/Default/Service\ Worker/ScriptCache
Library/Application\ Support/Slack/Service\ Worker/CacheStorage
Library/Containers/com.apple.Safari/Data/Library/Caches
.Trash/*
```
