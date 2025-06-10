# 📊 Task 6: Sales Trend Analysis Using SQL

## 📁 Project Title
**Sales Trend Analysis Using Aggregations**

## 🧠 Objective
Analyze monthly revenue and order volume from an online sales dataset using SQL aggregate functions.

---

## 🛠 Tools & Technology
- **MySQL Workbench** (or PostgreSQL / SQLite)
- **SQL**
- **Excel / CSV** for data import

---

## 📂 Dataset Columns
- `Order ID`
- `Order Date`
- `Product ID`
- `Sale Price`

---

## 📌 Steps Performed

1. **Created Database & Table** structure for online sales.
2. **Imported data** from Excel/CSV into MySQL.
3. **Used SQL queries** to extract and group sales data by year and month.
4. **Calculated**:
   - Total revenue (`SUM(Sale Price)`)
   - Total orders (`COUNT(DISTINCT Order ID)`)

---

## 📊 Key Query

```sql
SELECT
    EXTRACT(YEAR FROM `Order Date`) AS sales_year,
    EXTRACT(MONTH FROM `Order Date`) AS sales_month,
    SUM(`Sale Price`) AS monthly_revenue,
    COUNT(DISTINCT `Order ID`) AS monthly_order_volume
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM `Order Date`),
    EXTRACT(MONTH FROM `Order Date`)
ORDER BY
    sales_year,
    sales_month;
