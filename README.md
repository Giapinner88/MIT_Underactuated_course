# 🤖 Underactuated Robotics: Academic & Practical Syllabus

[![Python](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](https://www.python.org/)
[![Drake](https://img.shields.io/badge/Drake-Simulation-orange)](https://drake.mit.edu/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

Dự án này là một giáo trình thực hành mã nguồn mở, được tái cấu trúc và tổng hợp nhằm mục đích cung cấp một lộ trình học tập hệ thống cho lĩnh vực **Robot thiếu cơ cấu chấp hành (Underactuated Robotics)**. 

Repository này kết nối chặt chẽ giữa lý thuyết điều khiển phi tuyến học thuật và việc triển khai các thuật toán mô phỏng trên Python, tạo nền tảng vững chắc cho sinh viên, kỹ sư cơ điện tử và các nhà nghiên cứu robot học.

---

## 🗂 1. Cấu trúc Repository (Repository Structure)

Dự án được phân tách rõ ràng giữa nền tảng lý thuyết và không gian thực hành:

```text
📦 mit_underactuated_course
 ┣ 📜 README.md               # Tổng quan dự án và hướng dẫn (Tệp này)
 ┣ 📜 roadmap.md              # Lộ trình học tập chi tiết theo từng Lecture (Syllabus)
 ┣ 📂 docs/                   # Kho lưu trữ tài liệu lý thuyết (PDFs)
 │   ┣ 📜 book.pdf            # Toàn bộ giáo trình chính
 │   ┣ 📜 Introduction.pdf    # Giới thiệu tổng quan
 │   ┣ 📜 Chapter 1.pdf ... Chapter 20.pdf
 │   ┗ 📜 APPENDIX A.pdf ... E.pdf
 ┗ 📂 modules/                # Không gian thực hành mô phỏng theo từng chủ đề
     ┣ 📂 01-Fully-actuated-vs-Underactuated-Systems
     ┣ 📂 02-The-Simple-Pendulum
     ┣ 📂 03-Acrobots-Cart-Poles-and-Quadrotors
     ┣ ...
     ┗ 📂 18-System-Identification

```

---

## 🚀 2. Hướng dẫn thiết lập môi trường (Setup & Installation)

Dự án sử dụng một môi trường đồng nhất cho toàn bộ 18 module học tập. Điều này giúp bạn chỉ cần cài đặt một lần và có thể chạy bất kỳ bài tập nào trong repository. Môi trường xoay quanh Python 3.10+ và hệ thống mô phỏng Drake của MIT.

### Tùy chọn A: Sử dụng Docker (Khuyến nghị)
Việc sử dụng Docker giúp loại bỏ hoàn toàn các lỗi xung đột thư viện và tương thích đa nền tảng.

1. Clone repository về máy tính:
```bash
git clone [https://github.com/your-username/mit_underactuated_course.git](https://github.com/your-username/mit_underactuated_course.git)

cd mit_underactuated_course
```

2. Khởi tạo ảnh Docker (Chỉ cần chạy 1 lần):
```bash
docker build -t underactuated_env .
```

3. Chạy Docker Container với Volume Mount:
```bash
# Lệnh này ánh xạ thư mục hiện tại vào /app trong container, 
# giúp mọi thay đổi code của bạn được lưu trực tiếp vào ổ cứng thật.
docker run -p 8888:8888 -p 7000-7010:7000-7010 -v $(pwd):/app underactuated_env
```

4. Mở trình duyệt và truy cập: `http://localhost:8888`. Từ cây thư mục của Jupyter, bạn có thể điều hướng tự do vào từng module (VD: `modules/02-The-Simple-Pendulum/pend.ipynb`).

### Tùy chọn B: Chạy cục bộ với môi trường ảo (Local Virtual Environment)

*Yêu cầu hệ điều hành: Linux (Ubuntu) hoặc macOS. Người dùng Windows nên sử dụng WSL2.*

1. Tại thư mục gốc của dự án, khởi tạo môi trường ảo:
```bash
python -m venv drake_env
source drake_env/bin/activate
```

2. Cài đặt các thư viện phụ thuộc:
```bash
pip install -r requirements.txt
```


3. Khởi động Jupyter Notebook:
```bash
jupyter notebook
```
*(Từ giao diện Jupyter gốc, bạn có thể dễ dàng truy cập vào các tệp bài giảng và thực hành ở bất kỳ chương nào).*

---

## 📚 3. Nguồn tham khảo và Bản quyền (References & Acknowledgements)

Repository này mang tính chất tổng hợp và kế thừa tài nguyên học thuật. Toàn bộ nền tảng lý thuyết và bài tập gốc thuộc về khóa học và các tác giả dưới đây. Người học bắt buộc phải tham khảo tài liệu gốc để có cái nhìn sâu sắc nhất.

* **Tài liệu giáo trình chính (Textbook):** > Tedrake, Russ. *Underactuated Robotics: Algorithms for Walking, Running, Swimming, Flying, and Manipulation*. (Course Notes for MIT 6.8210).
* **Khóa học gốc (Original Course):** > [MIT 6.8210: Underactuated Robotics (Spring 2024)](https://underactuated.csail.mit.edu/index.html). Khóa học được thiết kế và giảng dạy bởi Giáo sư Russ Tedrake tại Viện Công nghệ Massachusetts (MIT).
* **Công cụ mô phỏng (Simulation Framework):** > Hệ thống bài tập được triển khai trên **[Drake](https://drake.mit.edu/)** – một thư viện mã nguồn mở C++/Python được phát triển bởi Phòng thí nghiệm Robot Hàng không Di động (Robot Locomotion Group) tại MIT.