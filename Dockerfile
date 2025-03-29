FROM ubuntu:22.04

# 复制deb包到容器
ARG DEB_FILE
COPY ${DEB_FILE} /tmp/hello-world.deb

# 安装deb包
RUN apt-get update && \
    apt-get install -y /tmp/hello-world.deb && \
    rm -rf /var/lib/apt/lists/*

# 设置默认命令（非必须）
CMD ["hello-world"]
