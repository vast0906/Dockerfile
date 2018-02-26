# hubot

开源的hubot镜像，只不过是通过倍洽https://bearychat.com

运行的时候带上HUBOT_BEARYCHAT_TOKENS变量

带了shellcmd

使用方法
```
docker run -d --env HUBOT_BEARYCHAT_TOKENS="xxxxxxx" BOT_OWNER="xxxxxx" BOT_NAME="xxxx"  --restart always vast0906/hubot  
```
