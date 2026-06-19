# Ecommerce Analytics SQL System

## Overview

SQL-based e-commerce analytics project built to simulate real-world business reporting. It models customers, products, and orders, then applies analytical SQL to extract revenue insights, customer lifetime value (LTV), and performance rankings.

---

## Features

### Database Design

* Normalized schema (Customers, Products, Categories, Orders, OrderItems)
* Proper foreign key relationships

### Analytics

* Total and per-product revenue analysis
* Customer Lifetime Value (LTV) calculation
* Monthly revenue trends
* Top customer identification

### Advanced SQL

* Window functions: `RANK()`, `ROW_NUMBER()`, `DENSE_RANK()`, `NTILE()`, `LAG()`
* CTE-based analysis
* Views for reusable reporting logic
* Stored procedures for automation

---

## Key Insight Outputs

* Top 10% customers by spending (LTV segmentation)
* Revenue distribution across products
* Month-over-month revenue trend
* Customer ranking by value contribution

---

## Tech Used

* SQL (MySQL / PostgreSQL compatible concepts)
* Window Functions
* CTEs
* Stored Procedures
* Relational Database Design

---

## Project Structure

```
/queries
/scheme and data
/queries
/screenshots
README.md
```

---

## Outcome

Built a structured SQL analytics system demonstrating business intelligence workflows: data modeling, aggregation, segmentation, and revenue analysis.
