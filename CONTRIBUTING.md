# 🤝 Hướng dẫn Đóng góp (Contributing Guidelines)

Cảm ơn bạn đã quan tâm và muốn đóng góp vào giáo trình thực hành **Underactuated Robotics**. Dự án này được xây dựng với triết lý mã nguồn mở, nhằm tạo ra một nền tảng học thuật vững chắc, dễ tiếp cận và có tính kế thừa cao cho cộng đồng kỹ sư cơ điện tử và nhà nghiên cứu robot.

Để đảm bảo tính đồng nhất về chất lượng học thuật và mã nguồn, vui lòng đọc kỹ các nguyên tắc dưới đây trước khi tạo Pull Request (PR).

---

## 🎓 1. Tiêu chuẩn Học thuật (Academic Standards)

Vì đây là một repository mang tính giáo dục:
* **Tính toàn vẹn:** Mọi lý thuyết, thuật toán hoặc đoạn mã được bổ sung nếu tham khảo từ các bài báo khoa học (papers), sách hoặc nguồn khác ngoài khóa học gốc MIT 6.8210, **bắt buộc phải được trích dẫn rõ ràng** trong Markdown hoặc comment code.
* **Toán học và Giải thích:** Không chỉ đóng góp mã nguồn (code), hãy đảm bảo rằng các phương trình động lực học hoặc hàm mục tiêu (cost functions) được giải thích rõ ràng bằng định dạng LaTeX trong Jupyter Notebook. Lập trình phải đi đôi với sự hiểu biết về cơ sở toán học cơ bản.
* **Mở rộng chủ đề:** Chúng tôi đặc biệt hoan nghênh các đóng góp ứng dụng lý thuyết điều khiển phi tuyến vào các hệ thống phức tạp mới (Ví dụ: Continuum Robotics, Soft Robotics, Multi-agent systems).

---

## 🔄 2. Quy trình làm việc (Pull Request Workflow)

Chúng tôi sử dụng mô hình Fork & Pull Request tiêu chuẩn. Vui lòng **không push trực tiếp** lên nhánh `main`.

1. **Fork repository** về tài khoản GitHub cá nhân của bạn.
2. **Clone** bản fork về máy tính cục bộ:
```bash
git clone [https://github.com/your-username/mit_underactuated_course.git](https://github.com/your-username/mit_underactuated_course.git)
```

3. **Tạo nhánh mới (Branch):** Sử dụng quy tắc đặt tên nhánh rõ ràng mô tả công việc của bạn.
* Cú pháp: `loại-thay-đổi/mô-tả-ngắn`
* Ví dụ: `feature/soft-robot-dynamics`, `fix/lqr-cost-matrix-typo`, `docs/update-chapter-4`.

```bash
git checkout -b feature/your-feature-name

```

4. **Thực hiện thay đổi và Commit:** 
Viết thông điệp commit (commit message) ngắn gọn nhưng mang tính mô tả cao, giải thích *tại sao* bạn thực hiện thay 
đổi này.

5. **Push nhánh** lên bản fork của bạn:
```bash
git push origin feature/your-feature-name
```

6. **Tạo Pull Request (PR)** từ bản fork của bạn vào nhánh `main` của repository gốc. Trong phần mô tả PR, hãy chỉ rõ bạn đang giải quyết vấn đề gì hoặc bổ sung module học thuật nào.

---

## 💻 3. Tiêu chuẩn Mã nguồn & Jupyter Notebook

Do dự án sử dụng môi trường mô phỏng Drake và Jupyter Notebook, hãy lưu ý:

* **Quản lý Output của Notebook:** Jupyter Notebook lưu trữ cả mã nguồn và kết quả đầu ra (ảnh, đồ thị 3D, text). Điều này làm cho việc theo dõi sự thay đổi (diff) trên GitHub rất khó khăn. **Trước khi commit, vui lòng xóa toàn bộ output của notebook** (`Cell -> All Output -> Clear`).
* **Kiểm tra môi trường:** Đảm bảo rằng tệp `.ipynb` mới của bạn chạy ổn định với tệp `requirements.txt` và `Dockerfile` chung ở thư mục gốc. Mọi module phải bắt đầu bằng việc kiểm tra môi trường giống như cấu trúc của tệp `Init.ipynb`.
* **Cập nhật thư viện:** Nếu bài tập của bạn bắt buộc phải cài thêm một thư viện Python mới, hãy đề cập rõ trong Pull Request để người duy trì (Maintainer) xem xét cập nhật vào `requirements.txt` tổng. Cố gắng hạn chế tối đa việc thêm thư viện ngoài trừ phi thực sự cần thiết cho tính toán khoa học.

---

## 🐞 4. Báo cáo Lỗi (Reporting Issues)

Nếu bạn không có thời gian viết code nhưng phát hiện ra lỗi logic toán học, lỗi cấu trúc hệ thống, hoặc bug trong mã nguồn, hãy mở một **Issue**. Vui lòng đính kèm:

* Tên module và tệp `.ipynb` gặp lỗi.
* Mô tả toán học hoặc logic bị sai (nếu có).
* Thông báo lỗi (Error traceback) từ Python.
