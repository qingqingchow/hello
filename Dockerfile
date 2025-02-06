# 使用官方的 Ubuntu 镜像作为基础镜像
FROM ubuntu:latest

# 设置环境变量，避免在安装过程中出现交互提示
ENV DEBIAN_FRONTEND=noninteractive

# 更新包列表并安装 Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# 暴露端口 80，供外部访问 Nginx
EXPOSE 80

# 启动 Nginx 服务
CMD ["nginx", "-g", "daemon off;"]
