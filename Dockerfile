# 使用官方Python基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器
COPY . /app

# 安装项目依赖
RUN pip install --no-cache-dir -r requirements.txt

# 运行应用程序
CMD ["python", "main.py"]
