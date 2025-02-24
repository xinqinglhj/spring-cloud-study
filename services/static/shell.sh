# 仅记录项目中使用到的命令

# 配置docker镜像
通过命令行生成配置（推荐新手）
sudo tee /etc/docker/daemon.json <<-'EOF'
{
    "registry-mirrors": [
        "https://docker.m.daocloud.io",
        "https://docker.imgdb.de",
        "https://docker-0.unsee.tech",
        "https://docker.hlmirror.com"
    ]
}
EOF

# 应用配置（必须执行）
sudo systemctl daemon-reload
sudo systemctl restart docker
# 验证简单镜像下载
sudo docker pull hello-world

# docker安装nacos并启动
docker pull nacos/nacos-server:v2.4.3
docker run -d -p 8848:8848 \
--name nacos -e MODE=standalone nacos/nacos-server:v2.4.3