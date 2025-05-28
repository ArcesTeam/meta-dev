# 默认配置官方 Gradle 镜像，后续可能依据实际需求更换为独立镜像
FROM gradle:8.13-jdk21 AS builder

# 配置必要标识
LABEL authors="ArcesTeam"

# 安装 just 以适配更加灵活的构建脚本
RUN apt-get update && \
    apt-get install -y just && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 设置默认工作目录为 /workspace 后续可能会依据语义重新调整
WORKDIR /workspace

# 将当前目录下的所有文件复制到容器的工作目录,需注意 .dockerignore 文件的配置
COPY . .

# 默认行为进入 bash 交互模式，手动附加 just 命令
ENTRYPOINT ["/bin/bash"]
