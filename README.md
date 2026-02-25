# Retail Revenue & Customer Intelligence Analysis (PostgreSQL)

## 📌 Objective
Conduct revenue and customer performance analysis on a large-scale retail transaction dataset using SQL to extract executive-level business insights.

---

## 📊 Dataset
Online Retail transactional dataset (~541,000 records) containing:

- InvoiceNo  
- StockCode  
- Description  
- Quantity  
- InvoiceDate  
- UnitPrice  
- CustomerID  
- Country  

Source: https://archive.ics.uci.edu/dataset/352/online+retail

---

## 🔍 Business Questions Addressed
1. What is the total revenue generated?
2. How does revenue trend month-over-month?
3. Which countries generate the highest revenue?
4. What are the top 10 revenue-generating products?
5. Who are the top 10 customers by total spending?

---

## 🛠 SQL Skills Demonstrated
- Revenue KPI construction (`quantity × unitprice`)
- Aggregation using `SUM`
- Data segmentation using `GROUP BY`
- Time-based trend analysis using `DATE_TRUNC`
- Data cleaning with filtering logic (`quantity > 0`, `unitprice > 0`)
- Business-focused metric interpretation

---

## 📈 Key Business Insights

- Total revenue generated: **£10.66M**
- Revenue peaked in **November 2011 (£1.50M)**, indicating strong seasonal holiday demand.
- The **United Kingdom accounts for ~85%+ of total revenue**, showing significant geographic concentration.
- A small group of SKUs drive a disproportionate share of total revenue.
- Top customers contribute substantially to overall sales, highlighting revenue concentration among high-value accounts.

---

## 🧠 Tools Used
- PostgreSQL  
- pgAdmin  
