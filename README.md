SQL Project Skills Showcase
Welcome to my SQL Project Skills repository! This project demonstrates my proficiency in SQL using SQL Server Management Studio (SSMS). It includes eight sections showcasing database management, querying, analytical skills, and performance analysis applied to a sample dataset.
Table of Contents
Project Overview (#project-overview)

Database Setup (#database-setup)

Build Customer Report (#build-customer-report)

Build Product Report (#build-product-report)

Changes Over-Time Analysis (#changes-over-time-analysis)

Cumulative Analysis (#cumulative-analysis)

Data Segmentation (#data-segmentation)

Performance Analysis (#performance-analysis)

Getting Started (#getting-started)

Tools Used (#tools-used)

Contributing (#contributing)

License (#license)

Contact (#contact)

Project Overview
This repository contains a SQL project developed in SQL Server Management Studio (SSMS) v20.0. It showcases my ability to manage databases, write analytical queries, segment data, and analyze performance using a sample dataset from the gold schema (e.g., sales data with customers and products).
Database Setup
Scripts to set up the database schema and tables used in the project.
Key Skills Demonstrated:
Creating tables in the gold schema (e.g., fact_sales, dim_customers, dim_products).

Establishing relationships with primary and foreign keys.

Files: `schema.sql` (./schema.sql), `data_import.sql` (./data_import.sql)
Build Customer Report
Scripts to generate a detailed customer report.
Key Skills Demonstrated:
Aggregating customer metrics (e.g., total orders, sales, quantity, products purchased).

Categorizing customers into VIP, Regular, or New based on order count and sales.

Segmenting by age group and calculating KPIs (e.g., average order value, monthly spend).

Files: `build_customer_report.sql` (./build_customer_report.sql)
Build Product Report
Scripts to create a product report with a view (gold.report_products).
Key Skills Demonstrated:
Aggregating product metrics (e.g., total orders, sales, quantity, unique customers).

Segmenting products into High-Performer, Mid-Range, or Low-Performer based on revenue.

Calculating KPIs (e.g., average order revenue, monthly revenue, recency).

Files: `build_product_report.sql` (./build_product_report.sql)
Changes Over-Time Analysis
Queries to analyze sales trends over time.
Key Skills Demonstrated:
Aggregating sales, customer count, and quantity by year and month.

Using YEAR and MONTH functions for time-based grouping.

Files: `changes_over_time_analysis.sql` (./changes_over_time_analysis.sql)
Cumulative Analysis
Cumulative calculations to track sales over time.
Key Skills Demonstrated:
Calculating monthly total sales.

Using window functions (SUM() OVER) to compute a running total of sales.

Files: `cumulative_analysis.sql` (./cumulative_analysis.sql)
Data Segmentation
Scripts to segment customers based on spending behavior.
Key Skills Demonstrated:
Classifying customers into VIP, Regular, or New based on lifespan and total spending.

Using CASE statements and DATEDIFF to calculate customer lifespan and segment counts.

Files: `data_segmentation.sql` (./data_segmentation.sql)
Performance Analysis
Scripts to analyze product performance.
Key Skills Demonstrated:
Comparing yearly product sales to the average sales performance and previous year's sales.

Using window functions (AVG, LAG) and CASE statements to evaluate performance trends.

Files: `performance_analysis.sql` (./performance_analysis.sql)
Getting Started
Clone the repository:
bash

git clone <repository-url>

Set up the database in SQL Server Management Studio (SSMS) v20.0.

Run the schema.sql and data_import.sql scripts to initialize the database.

Explore each section's SQL files to view the queries and their outputs.

Tools Used
SQL Engine: SQL Server Management Studio (SSMS) v20.0

Sample Dataset: Sales data in the gold schema (e.g., fact_sales, dim_customers, dim_products)

Contributing
Feel free to fork this repository, suggest improvements, or add new SQL techniques. Please submit a pull request with your changes.
License
This project is licensed under the MIT License (./LICENSE). See the LICENSE file for details.
Contact
For questions or feedback, reach out via GitHub Issues or connect with me on LinkedIn.

