## 安装

### Step1: 下载安装Docker

阿里云源，建议仅国内主机使用

```
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh --mirror Aliyun
```

官方源，建议仅国外主机使用

```
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
```

### Step2: 下载Docker镜像，并创建容器

```
docker run --name=dst jianrry/dst
```

## 管理

### 创建容器，并挂载目录(冒号前为宿主机目录，冒号后为容器内挂载的目录，都必须为绝对路径。)

```
docker run --name=dst -it -v /root/dst/config: /root/.klei/DoNotStarveTogether jianrry/dst /bin/bash
```

### 查看容器

```
docker ps -a
```

### 停止容器

```
docker stop dst
```

### 启动容器

```
docker start dst
```

### 重启容器

```
docker restart dst
```

### 删除容器（删除容器前，请停止该容器）

```
docker rm dst
```

### 查看容器日志

```
docker logs dst
```

### 查看镜像

```
docker images -a
```

### 删除镜像（删除镜像前，请停止该镜像创建的全部容器）

```
docker rmi jianrry/dst
```

 





