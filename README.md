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

### 停止容器

```
docker stop dst
```

### 删除容器

```
docker rm dst
```

### 启动容器

```
docker start dst
```

### 重启容器

```
docker restart dst
```

 





