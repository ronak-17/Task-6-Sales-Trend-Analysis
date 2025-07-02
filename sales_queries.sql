-- 1.Total_revenue & order volume
SELECT
  EXTRACT(YEAR FROM InvoiceDate) AS year,
  EXTRACT(MONTH FROM InvoiceDate) AS month,
  SUM(Quantity * UnitPrice) AS total_revenue,
  COUNT(DISTINCT InvoiceNo) AS order_volume
FROM
  online_sales
GROUP BY
  EXTRACT(YEAR FROM InvoiceDate),
  EXTRACT(MONTH FROM InvoiceDate)
ORDER BY
  year,
  month;
  
 -- 2.Top 3 month by sales
 SELECT
  EXTRACT(YEAR FROM invoicedate) AS year,
  EXTRACT(MONTH FROM invoicedate) AS month,
  SUM(quantity * unitprice) AS monthly_sales
FROM online_sales
GROUP BY year, month
ORDER BY monthly_sales DESC
LIMIT 3;

-- 3.Top-Selling Products by Revenue
SELECT
  StockCode,
  Description,
  SUM(Quantity * UnitPrice) AS total_sales
FROM
  online_sales_dataset
GROUP BY
  StockCode,
  Description
ORDER BY
  total_sales DESC
LIMIT 5;  -- Top 5 products
