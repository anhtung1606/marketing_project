#**📄 Xem Website dự án tại đây:  
[Marketing_analytic_project](https://anhtung1606.github.io/Marketing_analytic_project/)**

# 📊 Marketing Analytics Project – ShopEasy

## 📌 Giới thiệu dự án

Đây là một **Marketing Data Analytics Case Study** được thực hiện nhằm phân tích hiệu quả các chiến dịch marketing và hành vi khách hàng của doanh nghiệp bán lẻ online **ShopEasy**.

Dự án mô phỏng quy trình làm việc thực tế của một **Data Analyst**, từ xử lý dữ liệu thô đến phân tích và trực quan hóa.

---

## 🎯 Mục tiêu dự án

- Phân tích nguyên nhân **giảm tương tác (engagement)** và **tỷ lệ chuyển đổi (conversion rate)**
- Xác định các điểm rơi trong **Customer Journey Funnel**
- Đánh giá hiệu quả của các kênh marketing
- Phân tích hành vi khách hàng theo sản phẩm và mức độ tương tác
- Đưa ra đề xuất tối ưu chiến lược marketing

---

## 📂 Dataset

### Nguồn dữ liệu

Dữ liệu được mô phỏng từ hệ thống doanh nghiệp, bao gồm:

- CRM (Customer Data)
- Website Tracking (Engagement Data)
- Marketing Campaign Data
- Product Catalog

---

### Cấu trúc dữ liệu

Dự án gồm **5 bảng dữ liệu (CSV)**:

| Bảng | Mô tả |
|------|------|
| customers | Thông tin khách hàng |
| geography | Thông tin vị trí |
| products | Thông tin sản phẩm |
| engagement_data | Dữ liệu tương tác |
| customer_journey | Hành trình khách hàng |

---

### Các biến chính

- `CustomerID` – ID khách hàng  
- `ProductID` – ID sản phẩm  
- `VisitDate` – Ngày truy cập  
- `Stage` – Giai đoạn trong funnel  
- `EngagementScore` – Mức độ tương tác  
- `Conversion` – Trạng thái chuyển đổi  

---

## 🛠️ Công cụ sử dụng

- **MySQL**: Làm sạch, join và xử lý dữ liệu  
- **Python (Pandas, Matplotlib)**: Phân tích dữ liệu & trực quan hóa  
- **Power BI**: Xây dựng dashboard  
- **GitHub**: Lưu trữ và trình bày dự án  

---

## 🔄 Quy trình thực hiện

### 1. Data Cleaning (SQL)

- Join các bảng dữ liệu
- Chuẩn hóa định dạng dữ liệu
- Xử lý giá trị NULL
- Loại bỏ dữ liệu trùng lặp (CTE)
- Tạo bảng dữ liệu sạch: `marketing_cleaned`

---

### 2. Data Analysis (Python)

#### 📊 Funnel Analysis

- Phân tích các bước:
  - View → Click → Add to Cart → Purchase
- Tính tỷ lệ chuyển đổi giữa các bước

👉 **Insight**:  
Drop mạnh ở bước **Add to Cart → Purchase** → Vấn đề ở giai đoạn thanh toán

---

#### 📈 Engagement Analysis

- Phân tích mức độ tương tác của khách hàng
- So sánh giữa các nhóm khách hàng

👉 **Insight**:  
Tồn tại nhóm khách hàng **engagement cao nhưng không chuyển đổi** → cơ hội remarketing

---

#### 🛍️ Product Analysis

- Xác định sản phẩm có:
  - Lượt xem cao nhưng không bán được
  - Tỷ lệ chuyển đổi cao

👉 **Insight**:  
Một số sản phẩm cần tối ưu về **giá, nội dung hoặc UX**

---

### 3. Data Visualization (Power BI)

Dashboard gồm các phần:

- Tổng quan hiệu quả marketing
- Funnel chuyển đổi
- Phân tích hành vi khách hàng
- Hiệu suất sản phẩm

---

## 📊 Dashboard Highlights

- Engagement cao nhưng conversion thấp  
→ Vấn đề ở giai đoạn cuối funnel  

- Drop lớn tại bước thanh toán  
→ Cần tối ưu UX/UI hoặc quy trình checkout  

- Một số sản phẩm có view cao nhưng conversion thấp  
→ Cần cải thiện nội dung hoặc pricing  

---

## 📌 Kết luận

- Marketing campaigns tạo được traffic nhưng chưa tối ưu chuyển đổi  
- Hành vi khách hàng cho thấy tiềm năng remarketing lớn  
- Điểm nghẽn chính nằm ở giai đoạn **Add to Cart → Purchase**

---

## 💡 Đề xuất

- Tối ưu UX/UI trang thanh toán  
- Triển khai chiến dịch remarketing  
- Cải thiện nội dung & giá sản phẩm  
- A/B Testing landing page và checkout flow  

---

## 🚀 Định hướng phát triển

- Xây dựng mô hình dự đoán conversion (Machine Learning)  
- Cá nhân hóa trải nghiệm khách hàng  
- Tối ưu chiến lược marketing theo từng phân khúc  

---

## 🔗 Project Link

👉 GitHub Repository:  
https://github.com/anhtung1606/marketing_project

---

## 👨‍💻 Tác giả

**Tùng Bùi**  
- Data Analyst (Fresher)  
- Kỹ năng: SQL | Python | Power BI | Data Visualization  

---
