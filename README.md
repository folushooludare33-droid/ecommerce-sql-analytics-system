# E-Commerce Analytics SQL System

A comprehensive SQL analytics project that models the operations of an e-commerce business and transforms transactional data into actionable business intelligence. The system demonstrates relational database design, advanced SQL querying, customer segmentation, revenue analysis, and performance reporting using industry-standard SQL techniques.

This project showcases how SQL can be used beyond data storage to support decision-making through analytical reporting and business intelligence workflows.

---

## Features

### Relational Database Design

* Fully normalized database schema
* Proper primary and foreign key relationships
* Separate tables for customers, products, categories, orders, and order items
* Realistic e-commerce data model

### Business Analytics

* Customer Lifetime Value (LTV) analysis
* Product revenue reporting
* Monthly revenue trends
* Sales aggregation
* Customer purchase behavior analysis
* Revenue contribution by category
* Top-performing products
* High-value customer identification

### Advanced SQL Techniques

* Common Table Expressions (CTEs)
* Window Functions
* Aggregate Functions
* Views for reusable reporting
* Stored Procedures
* Ranking and segmentation queries
* Complex joins across multiple tables

---

## Database Schema

The project models a complete e-commerce system using the following tables:

* Customers
* Categories
* Products
* Orders
* OrderItems

These tables are connected through foreign key relationships to maintain data integrity while supporting analytical queries across the entire sales pipeline.

---

## SQL Concepts Demonstrated

* INNER JOIN
* LEFT JOIN
* GROUP BY
* ORDER BY
* HAVING
* CASE Statements
* Aggregate Functions
* Common Table Expressions (CTEs)
* Window Functions
* Views
* Stored Procedures
* Date Functions
* Customer Segmentation

---

## Window Functions Used

The project demonstrates practical business applications of modern SQL window functions, including:

* `RANK()`
* `DENSE_RANK()`
* `ROW_NUMBER()`
* `NTILE()`
* `LAG()`

These functions are used to rank customers, identify top-selling products, analyze revenue trends, and segment customers based on spending patterns.

---

## Business Reports Generated

The analytics system produces reports including:

* Customer Lifetime Value (LTV)
* Top Spending Customers
* Product Revenue Rankings
* Monthly Revenue Trends
* Category Performance
* Customer Purchase Rankings
* Revenue Distribution
* Top 10% Customer Segmentation
* Sales Performance Analysis

---

## Technologies Used

* SQL
* Relational Database Design
* MySQL-Compatible SQL Concepts
* PostgreSQL-Compatible SQL Concepts
* Common Table Expressions (CTEs)
* Window Functions
* Stored Procedures
* Views

---

## Project Structure

```text
Ecommerce-Analytics-System/
│
├── schema_and_data/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── sample_data.sql
│
├── queries/
│   ├── analytics_queries.sql
│   ├── ranking_queries.sql
│   ├── revenue_reports.sql
│   └── stored_procedures.sql
│
├── screenshots/
│
├── README.md
│
└── EcommerceAnalytics.db
```

---

## Running the Project

1. Create a new SQL database.
2. Execute the schema script to create all tables.
3. Run the sample data script to populate the database.
4. Execute the analytics queries.
5. Review the generated business reports and rankings.

---

## Sample Analytics

The project answers common business questions such as:

* Which customers generate the highest revenue?
* Which products contribute the most sales?
* What are the monthly revenue trends?
* Which product categories perform best?
* Who are the top 10% of customers by spending?
* Which customers are increasing or decreasing their purchasing activity?
* How is revenue distributed across the business?

---

## Skills Demonstrated

* Relational Database Design
* SQL Development
* Database Normalization
* Business Intelligence
* Revenue Analytics
* Customer Segmentation
* Data Aggregation
* Performance Optimization
* Analytical Query Design
* Window Functions
* Stored Procedures
* Data Modeling

---

## Screenshots

Add screenshots of the completed project inside the `screenshots/` folder.

### Database Schema

```text
screenshots/database_schema.png
```

### Customer Lifetime Value Report

```text
screenshots/customer_ltv.png
```

### Product Revenue Ranking

```text
screenshots/product_revenue.png
```

### Monthly Revenue Trend

```text
screenshots/monthly_revenue.png
```

### Top Customer Analysis

```text
screenshots/top_customers.png
```

---

## Business Value

Organizations rely on SQL to transform raw transactional data into meaningful business insights. This project demonstrates a complete analytics workflow, from designing a normalized database to producing executive-level reports that support strategic decision-making. It reflects the type of reporting commonly used by finance, marketing, operations, and executive leadership teams to monitor performance, identify high-value customers, and track revenue growth.

---

## Future Improvements

* Interactive BI dashboard integration
* Inventory analytics
* Supplier performance reporting
* Geographic sales analysis
* Customer churn prediction
* Product recommendation analysis
* Automated report scheduling
* Data warehouse integration
* Performance indexing and query optimization
* Cloud database deployment

---

## Author

Developed as a portfolio project demonstrating SQL development, relational database design, advanced analytics, business intelligence reporting, and data-driven decision-making.
