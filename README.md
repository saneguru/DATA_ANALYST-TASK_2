# 📊 Exploratory Data Analysis (EDA) & Business Intelligence

## Chipotle Sales Dataset Analysis

------------------------------------------------------------------------

## 📌 Project Overview

This project focuses on performing Exploratory Data Analysis (EDA) and
generating Business Intelligence insights using SQL and Python.

The objective is to uncover sales patterns, revenue trends, and product
performance insights from the Chipotle dataset and present them in a
structured dashboard-ready format.

------------------------------------------------------------------------

## 🎯 Objective

-   Analyze sales and revenue performance
-   Identify top-performing products
-   Understand order behavior and distribution
-   Extract business insights using SQL
-   Create visualizations for decision-making
-   Develop a static dashboard presentation

------------------------------------------------------------------------

## 🗂 Dataset Information

**Dataset Name:** Chipotle Orders Dataset\
**Database Used:** SQLite

### Key Columns:

-   order_id
-   quantity
-   item_name
-   choice_description
-   item_price

------------------------------------------------------------------------

## 🛠 Tools & Technologies Used

-   Python
-   SQLite
-   Pandas
-   Matplotlib
-   SQL
-   PowerPoint (Dashboard Mockup)

------------------------------------------------------------------------

## 🔎 Data Cleaning Steps

-   Converted item_price from string (\$) to numeric format
-   Created a new column: revenue = item_price × quantity
-   Checked for null values and handled parsing errors
-   Aggregated order-level metrics

------------------------------------------------------------------------

## 📊 Exploratory Data Analysis

### Descriptive Analysis

-   Total number of orders
-   Total revenue generated
-   Average order value
-   Total quantity sold

### Product Performance Analysis

-   Top 10 most sold items
-   Top 10 revenue generating items
-   Most expensive items
-   Item-level revenue contribution

### Order Behavior Analysis

-   Order size distribution
-   Revenue per order
-   High-value order identification

### Distribution Analysis

-   Revenue distribution histogram
-   Quantity distribution
-   Order size frequency

------------------------------------------------------------------------

## 💡 Business Insights

-   Revenue is highly concentrated among top products.
-   A small group of items drives a large percentage of total sales.
-   Most orders contain low quantities (upselling opportunity).
-   High-priced items significantly influence total revenue.
-   Order size patterns can be leveraged for promotional strategies.

------------------------------------------------------------------------

## 🧠 Sample SQL Queries

``` sql
-- Total Revenue
SELECT SUM(CAST(REPLACE(item_price, '$', '') AS REAL) * quantity) 
FROM orders;

-- Top Selling Items
SELECT item_name, SUM(quantity) 
FROM orders
GROUP BY item_name
ORDER BY SUM(quantity) DESC
LIMIT 10;

-- Average Order Value
SELECT 
SUM(CAST(REPLACE(item_price, '$', '') AS REAL) * quantity)
/
COUNT(DISTINCT order_id)
FROM orders;
```

------------------------------------------------------------------------

## 🚀 Learning Outcomes

-   Hands-on SQL aggregation & filtering
-   Real-world revenue analysis
-   Data cleaning techniques
-   Building visual analytics dashboards
-   Translating raw data into business insights

------------------------------------------------------------------------

## 📌 Future Improvements

-   Add correlation heatmap
-   Perform customer segmentation
-   Time-series sales trend analysis
-   Build interactive dashboard (Power BI / Tableau / Streamlit)
-   Deploy as web-based BI app

------------------------------------------------------------------------

## 📎 Project Status

Completed -- EDA & Business Insights\
Visualization Dashboard Created\
SQL Queries Implemented
