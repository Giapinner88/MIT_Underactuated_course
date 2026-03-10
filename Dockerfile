# Sử dụng base image Python tối ưu
FROM python:3.10-slim

# Thiết lập các biến môi trường để tránh interactive prompts
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

# Cài đặt các system dependencies cần thiết cho Drake và meshcat
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    wget \
    xvfb \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Tạo thư mục làm việc
WORKDIR /app

# Copy tệp requirements vào container và cài đặt
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Mở cổng cho Jupyter Notebook và Meshcat (render 3D)
EXPOSE 8888 7000-7010

# Chạy Jupyter Notebook khi khởi động container
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]