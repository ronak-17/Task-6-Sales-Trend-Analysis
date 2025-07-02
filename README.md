# Sales-Trend-Analysis

Project Overview
----------
This project contains SQL queries designed to analyze key metrics from an online_sales dataset. These queries help derive insights related to revenue, sales trends, and product performance.

Total Revenue & Order Volume
----------
- Calculate the total revenue and the number of distinct orders 
- Extracts year and month from InvoiceDate.
- Calculates total revenue as the product of Quantity and UnitPrice.
- Counts distinct InvoiceNo values to measure order volume.
- Groups results by year and month and orders them chronologically.

Top 3 Months by Sales
----------
- Identify the top three months with the highest sales revenue.
- Extracts year and month from InvoiceDate.
- Computes total sales for each month.
- Orders results in descending order of sales and limits output to the top 3 months.

Top-Selling Products by Revenue
----------
- Determine the most profitable products based on total revenue generated.
- Groups data by StockCode and Description.
- Computes total sales per product.
- Orders results by sales in descending order and returns the top 5 products.
