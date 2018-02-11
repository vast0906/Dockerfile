使用方法：
1. 直接使用参数运行
```
docker run  --restart=always -dt -p 1080:1080  -d vast0906/shadowsocks-client -s $SERVER -p $PORT -b 0.0.0.0 -l 1080 -k $PASSWD -t 600 -m $MODLE
```
2. 使用文件运行，记得将json中的127.0.0.1修改为0.0.0.0
```
docker run  --restart=always -dt -d -p 1080:1080 -v /home/admin/ssr:/mnt/ vast0906/ss-client -c /mnt/ssr.json
```
docker run  --restart=always -p 8989:8989 -e METHOD='chacha20' -e PROTOCOL='auth_sha1_v4_compatible' -e OBFS='http_simple_compatible' -e SERVER_PORT=8989 -e PASSWORD='test123' -d breakwa11/shadowsocksr 
