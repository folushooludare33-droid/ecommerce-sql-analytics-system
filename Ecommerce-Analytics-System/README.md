# Ecommerce Analytics System (SQLite)

## Overview
A complete SQL analytics project simulating an e-commerce platform. It models customers, orders, products, and order items, then applies analytical SQL techniques to extract business insights.

---

## Features

- Relational database design (3NF structure)
- Customer lifetime value (LTV) analysis
- Product performance ranking
- Monthly revenue trend analysis
- Running revenue (cumulative growth)
- Customer segmentation using NTILE
- Ranking using RANK and DENSE_RANK
- View-based reporting layer

---

## Database Schema

- Customers
- Products
- Categories
- Orders
- OrderItems

Relationships:
- Customers → Orders (1:M)
- Orders → OrderItems (1:M)
- Products → OrderItems (M:1)

---

## Key SQL Concepts Used

- JOINs
- GROUP BY aggregation
- CTEs (Common Table Expressions)
- Window Functions:
  - RANK()
  - NTILE()
  - SUM() OVER()
- Views (SQLite procedure replacement)

---

## How to Run

### 1. Open DB Browser for SQLite
- Open `EcommerceAnalytics.db`

### 2. Run Queries
- Go to **Execute SQL tab**
- Paste queries from `/queries` folder
- Click **Run (▶)**

### 3. View Results
- Results appear in grid below query editor

---

## How to Take Screenshots

Take screenshots of:

### 1. Customer Revenue (LTV)
- Run `q1`
- Screenshot ranked customers

### 2. Top 10% Customers
- Run `q2`
- Screenshot VIP segment

### 3. Product Performance
- Run `q3`
- Screenshot product ranking

### 4. Monthly Revenue Trend
- Run `q4`
- Screenshot revenue by month

### 5. Running Revenue
- Run `q5`
- Screenshot cumulative growth

---

## Folder Structure

Ecommerce-Analytics-System/
│
├── EcommerceAnalytics.db
├── schema_and_data.sql
├── queries/
│   ├── customer_ltv.sql
│   ├── product_revenue.sql
│   ├── monthly_revenue.sql
│   ├── running_revenue.sql
│
├── screenshots/
│   ├── ltv.png
│   ├── top10.png
│   ├── product_rank.png
│   ├── revenue_trend.png
│
└── README.md

---

## Outcome

This project demonstrates:
- Data modeling
- Business intelligence logic
- Analytical SQL mastery
- Portfolio-ready reporting system