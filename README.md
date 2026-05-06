# AWS ETL Pipeline with Analytics (S3 + Glue + Athena)

## 📌 Project Overview
This project demonstrates an end-to-end ETL pipeline built on AWS to process e-commerce datasets. The pipeline ingests raw data, performs transformations using PySpark, and generates analytical insights.

---

## ⚙️ Tech Stack
- Amazon S3 (Data Storage)
- AWS Glue (ETL Processing - PySpark)
- Amazon Athena (Querying)
-  PySpark

---

## 🔄 Architecture
S3 (Raw Data) → AWS Glue (PySpark ETL) → S3 (Processed Parquet) → Athena (Analytics)

---

## 📊 Dataset
- Orders
- Order Items
- Customers

---

## 🚀 Features
- Data ingestion into S3
- Multi-table joins using PySpark
- Data cleaning and transformations
- Revenue calculation and aggregations
- Storage in Parquet format for optimized performance
- Querying using Athena

---

## 🔧 ETL Process

1. Load raw data from S3
2. Perform joins between tables
3. Apply transformations and aggregations
4. Generate business metrics (e.g., revenue)
5. Store processed data in Parquet format in S3

---

## 📈 Sample Queries

```sql
SELECT customer_id, SUM(revenue) AS total_revenue
FROM processed_orders
GROUP BY customer_id
ORDER BY total_revenue DESC;


  “How to Run” section
1. Upload raw data to S3
2. Run Glue job (etl_job.py)
3. Output stored in S3 (Parquet)
4. Query using Athena

  Data Schema
orders(order_id, customer_id, order_date)
order_items(order_id, price)
customers(customer_id, customer_name)
