# E-commerce SQL Analytics System (SQLite)

## Overview
This project simulates a real-world e-commerce analytics system using SQLite. It models customers, products, orders, and order items, then applies analytical SQL techniques to extract business insights such as customer lifetime value, product performance, and revenue trends.

---

## Objectives
- Design a normalized relational database
- Build a transactional dataset
- Perform business analytics using SQL
- Use advanced SQL features (CTEs and window functions)
- Simulate real e-commerce reporting systems

---

## Database Schema

### Tables

- Customers
- Products
- Categories
- Orders
- OrderItems

### Relationships

- Customers → Orders (1 to many)
- Orders → OrderItems (1 to many)
- Products → OrderItems (many to 1)
- Categories → Products (1 to many)
---

## Key Features

### 1. Customer Lifetime Value (LTV)
- Calculates total revenue per customer
- Ranks customers using RANK()
- Segments customers using NTILE(10)

### 2. Product Performance Analysis
- Revenue per product
- Product ranking by sales contribution

### 3. Monthly Revenue Trends
- Aggregates revenue by month and year
- Identifies sales performance over time

### 4. Running Revenue Growth
- Uses window functions to calculate cumulative revenue
- Tracks business growth over time
---

## SQL Concepts Used

- SELECT, JOIN, GROUP BY
- Common Table Expressions (CTEs)
- Window Functions:
  - RANK()
  - NTILE()
  - SUM() OVER()
- Aggregation and time-series analysis
- SQLite views (procedure alternatives)
---

## Project Structure
