# sonar
```
docker run -d --name sonarqube.cn    \
    -p 9000:9000 -p 9092:9092  \
    -e SONARQUBE_JDBC_USERNAME=sonar  \
    -e SONARQUBE_JDBC_PASSWORD=sonar   
    -e SONARQUBE_JDBC_URL="jdbc:mysql://mysql:3306/sonar?useUnicode=true&characterEncoding=utf8"  \
    vast0906/sonarqube:zh
```

` 镜像默认插件 `
* 中文界面
* Golang
