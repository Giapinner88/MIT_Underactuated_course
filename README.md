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
git clone [https://github.com/Giapinner88/mit_underactuated_course.git](https://github.com/Giapinner88/mit_underactuated_course.git)

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

### Tùy chọn C: Chạy trực tiếp trên VS Code (Khuyên dùng cho Kỹ sư/Nhà phát triển)

Sử dụng Visual Studio Code mang lại trải nghiệm tích hợp tốt nhất khi bạn có thể vừa viết code, gỡ lỗi toán học và xem mô phỏng trên cùng một giao diện.

**Cách 1**: Trải nghiệm "Plug-and-Play" với Dev Containers (Tốt nhất)

1. Cài đặt tiện ích mở rộng Dev Containers (ID: ms-vscode-remote.remote-containers) trong VS Code.

2. Clone repository và mở thư mục gốc bằng VS Code.

3. Nhấn Ctrl+Shift+P (hoặc Cmd+Shift+P trên macOS), gõ và chọn: Dev Containers: Reopen in Container.

4. VS Code sẽ tự động xây dựng môi trường, cài đặt thư viện và mở workspace. Bạn có thể chạy trực tiếp bất kỳ tệp .ipynb nào.

**Cách 2**: Chạy với môi trường ảo cục bộ (Local Venv)

1. Đảm bảo bạn đã cài đặt môi trường ảo ở thư mục gốc (pip install -r requirements.txt).

2. Mở tệp .ipynb bất kỳ trong VS Code.

3. Ở góc trên cùng bên phải của Notebook, chọn Select Kernel -> Python Environments -> Chọn môi trường ảo của bạn.

* 📺 Mẹo xem mô phỏng 3D (Meshcat) ngay trong VS Code: Hệ thống mô phỏng Drake sử dụng Meshcat (thường chạy ở cổng 7000). Để xem mô phỏng mà không cần mở trình duyệt web:

    1. Chạy khối lệnh khởi tạo Meshcat trong notebook.

    2. Nhấn Ctrl+Shift+P, gõ lệnh: Simple Browser: Show.

    3. Dán http://localhost:7000 vào thanh địa chỉ. Màn hình VS Code sẽ chia đôi: một bên là mã nguồn, một bên là đồ họa 3D.

---

## 📚 3. Nguồn tham khảo và Bản quyền (References & Acknowledgements)

Repository này mang tính chất tổng hợp và kế thừa tài nguyên học thuật. Toàn bộ nền tảng lý thuyết và bài tập gốc thuộc về khóa học và các tác giả dưới đây. Người học bắt buộc phải tham khảo tài liệu gốc để có cái nhìn sâu sắc nhất.

* **Tài liệu giáo trình chính (Textbook):** > Tedrake, Russ. *Underactuated Robotics: Algorithms for Walking, Running, Swimming, Flying, and Manipulation*. (Course Notes for MIT 6.8210).
* **Khóa học gốc (Original Course):** > [MIT 6.8210: Underactuated Robotics (Spring 2024)](https://underactuated.csail.mit.edu/index.html). Khóa học được thiết kế và giảng dạy bởi Giáo sư Russ Tedrake tại Viện Công nghệ Massachusetts (MIT).
* **Công cụ mô phỏng (Simulation Framework):** > Hệ thống bài tập được triển khai trên **[Drake](https://drake.mit.edu/)** – một thư viện mã nguồn mở C++/Python được phát triển bởi Phòng thí nghiệm Robot Hàng không Di động (Robot Locomotion Group) tại MIT.

---

🗺 4. Lộ trình học tập (Roadmap)

Việc học các hệ thống phi tuyến yêu cầu một quy trình tư duy logic mạch lạc. Không nên bỏ qua lý thuyết để tiến thẳng vào việc chạy mã nguồn mô phỏng. Hãy tuân thủ nghiêm ngặt lộ trình đã được biên soạn.

---

🤝 5. Đóng góp (Contributing)

Dự án này được xây dựng dựa trên triết lý mã nguồn mở và học tập cộng tác. Mọi đóng góp nhằm hoàn thiện tài liệu, tối ưu hóa thuật toán hoặc phát triển các bài toán ứng dụng mới (ví dụ: mô hình hóa continuum robotics, soft robotics) đều được hoan nghênh.