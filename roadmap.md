# 🤖 Roadmap: Underactuated Robotics (Lộ trình MIT Spring 2024)

Lộ trình này được bám sát theo lịch giảng dạy thực tế của môn học **MIT 6.8210: Underactuated Robotics**, tạo nền tảng vững chắc về lý thuyết điều khiển phi tuyến, tối ưu hóa và ứng dụng mô phỏng bằng Python (qua Drake framework). 

**Gợi ý phương pháp học:** Hãy ưu tiên đọc các chương sách giáo trình (lý thuyết) trước khi bắt tay vào chạy các notebook mô phỏng (`.ipynb`) tương ứng. 

---

## 🟢 Phần 1: Nền tảng Động lực học & Quy hoạch Động cơ bản
*Nắm vững các khái niệm cơ bản về hệ thống cơ điện tử, phân tích không gian pha và bắt đầu làm quen với điều khiển tối ưu qua Quy hoạch động.*

- [ ] **Lecture 1: Động lực học Robot và Điều khiển dựa trên mô hình**
  - 📖 Đọc: Chương 1 & Drake Blog Post
  - 💻 Thực hành: Làm quen với Drake Systems (`01_intro_systems`)
- [ ] **Lecture 2: Động lực học Phi tuyến (Nonlinear Dynamics)**
  - 📖 Đọc: Chương 2
  - 💻 Thực hành: Con lắc đơn (Simple Pendulum)
- [ ] **Lecture 3: Quy hoạch Động I (Dynamic Programming I)**
  - 📖 Đọc: Chương 7.1 - 7.2
- [ ] **Lecture 4: Quy hoạch Động II**
  - 📖 Đọc: Chương 7.3, Chương 8.1 (LQR)
- [ ] **Lecture 5: Acrobots, Cart-poles, và Quadrotors I**
  - 📖 Đọc: Chương 3.1 - 3.4
  - 💻 Thực hành: Mô phỏng cân bằng xe con lắc, quadrotor cơ bản
- [ ] **Lecture 6: Quy hoạch Động III**
  - 📖 Đọc: Chương 7.4 trở đi
  - 💻 Thực hành: Các bài toán Value Iteration (`07_dynamic_programming`)

---

## 🟡 Phần 2: Phân tích Ổn định & Tối ưu hóa Quỹ đạo
*Sử dụng công cụ Toán học mạnh mẽ để chứng minh tính ổn định của hệ thống và tính toán các quỹ đạo phức tạp.*

- [ ] **Lecture 7: Phân tích Lyapunov I**
  - 📖 Đọc: Chương 9.1, Chương 3.6
- [ ] **Lecture 8: Tính toán Hàm Lyapunov I**
  - 📖 Đọc: Chương 9.2 - 9.3 & Ôn tập về Tối ưu hóa lồi (Convex Optimization)
- [ ] **Lecture 9: Tính toán Hàm Lyapunov II**
  - 📖 Đọc: Chương 9.2 - 9.3
  - 💻 Thực hành: Sum-of-Squares (SOS) Optimization (`09_lyapunov_analysis`)
- [ ] **Lecture 10: Tối ưu hóa Quỹ đạo I (Trajectory Optimization I)**
  - 📖 Đọc: Chương 10.1 - 10.4
- [ ] **Lecture 11: Tối ưu hóa Quỹ đạo II**
  - 📖 Đọc: Chương 10.5 - 10.6, 10.8
  - 💻 Thực hành: Direct Collocation, Bài toán chuyển quỹ đạo (`10_trajectory_optimization`)
- [ ] **Lecture 12: Ổn định Quỹ đạo (Trajectory Stabilization)**

---

## 🟠 Phần 3: Robot đi bộ, Hệ thống Lai & Lập kế hoạch qua Tiếp xúc
*Giải quyết bài toán khó nhất của Robot: Tương tác vật lý với môi trường qua các điểm tiếp xúc.*

- [ ] **Lecture 13: Các mô hình đi bộ cơ bản**
  - 📖 Đọc: Chương 4 - 4.2
  - 💻 Thực hành: Bánh xe không vành (Rimless wheel), Compass gait (`04_simple_walking`)
- [ ] **Lecture 14: Tối ưu hóa Quỹ đạo Lai (Hybrid trajectory optimization)**
  - 📖 Đọc: Chương 16.1, Chương 17.1 - 17.1.2
- [ ] **Lecture 15: Lập kế hoạch + Điều khiển qua tiếp xúc**
  - 📖 Đọc: Chương 4.3 trở đi, Chương 16.2 - 16.3, Chương 17.1.3 trở đi
  - 💻 Thực hành: Bài toán Robot ném bóng rổ, Robot nhảy (`17_planning_through_contact`)
- [ ] **Lecture 16: Robot hình người (Humanoid Robots)**
  - 📖 Đọc: Chương 5
  - 💻 Thực hành: ZMP, LittleDog, Spot (`05_highly_articulated_robots`)
- [ ] **Lecture 17: Tối ưu hóa hỗn hợp rời rạc - liên tục (Mixed-discrete & continuous optimization)**
  - 📖 Đọc: Phụ lục C.5

---

## 🔴 Phần 4: Điều khiển Ngẫu nhiên, Robust & Khám phá AI
*Mở rộng hệ thống để chịu đựng nhiễu, xử lý sự không chắc chắn và tiệm cận với các phương pháp Machine Learning.*

- [ ] **Lecture 18: Lập kế hoạch di chuyển dựa trên lấy mẫu (Kinodynamic motion planning)**
  - 📖 Đọc: Chương 12
  - 💻 Thực hành: RRT Planning (`12_motion_planning_search`)
- [ ] **Lecture 19: Động lực học Ngẫu nhiên (Stochastic dynamics)**
  - 📖 Đọc: Chương 6
- [ ] **Lecture 20: Điều khiển Ngẫu nhiên (Stochastic Control)**
  - 📖 Đọc: Chương 14
- [ ] **Lecture 21: Điều khiển Bền vững (Robust Control) & Tìm kiếm Chính sách (Policy Search)**
  - 📖 Đọc: Chương 14, Chương 11
  - 💻 Thực hành: Quadrotor bay trong gió lớn (`13_robust_stochastic_control`), Tìm kiếm chính sách (`11_policy_search`)
- [ ] **Lecture 22: Phản hồi đầu ra (Output feedback)**
  - 📖 Đọc: Chương 15
- [ ] **Lecture 23: Lập kế hoạch di chuyển phản hồi (Feedback motion planning)**
  - 📖 Đọc: Chương 13
- [ ] **Lecture 24: Học bắt chước (Imitation learning) / Foundation models / Tổng kết khóa học**
  - 🎯 *Nắm bắt xu hướng tích hợp AI và Robotics hiện đại.*
- [ ] **Kết thúc: Xem các Video Dự án Cuối kỳ (Final project videos)**
  - 💡 *Gợi ý: Chọn một bài toán điều khiển phức tạp hoặc ứng dụng vào thiết kế cơ cấu robot riêng của bạn để làm project tổng kết.*