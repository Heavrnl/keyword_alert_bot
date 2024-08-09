# 使用官方Python基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器
COPY . /app

# 复制 requirements.txt 到容器（假设 requirements.txt 在项目根目录）
COPY requirements.txt /app/

# 安装项目依赖
RUN pip install -r requirements.txt

CMD ["python", "main.py"]
