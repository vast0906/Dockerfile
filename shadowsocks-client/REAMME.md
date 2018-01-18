使用方法：
1. 直接使用参数运行
```
docker run  --restart=always -dt -p 1080:1080  -d vast0906/shadowsocks-client -s $SERVER -p $PORT -b 0.0.0.0 -l 1080 -k $PASSWD -t 600 -m $MODLE
```
2. 使用文件运行，记得将json中的127.0.0.1修改为0.0.0.0
```
docker run  --restart=always -dt -d -p 1080:1080 -v /home/admin/ssr:/mnt/ vast0906/ss-client -c /mnt/ssr.json
```
