-- 1) Preview
SELECT * FROM sales LIMIT 10;

-- 2) Table structure (SQLite)
PRAGMA table_info(sales);

-- 3) Total revenue
SELECT ROUND(SUM(CAST(total_bill AS REAL)), 2) AS total_revenue
FROM sales;

-- 4) Average bill
SELECT ROUND(AVG(CAST(total_bill AS REAL)), 2) AS avg_bill
FROM sales;

-- 5) Revenue by day
SELECT
  day,
  ROUND(SUM(CAST(total_bill AS REAL)), 2) AS total_revenue
FROM sales
GROUP BY day
ORDER BY total_revenue DESC;

-- 6) Average tip percentage
SELECT
  ROUND(AVG((CAST(tip AS REAL) / CAST(total_bill AS REAL)) * 100), 2) AS avg_tip_percentage
FROM sales;

-- 7) Tip percentage by smoker vs non-smoker
SELECT
  smoker,
  ROUND(AVG((CAST(tip AS REAL) / CAST(total_bill AS REAL)) * 100), 2) AS avg_tip_percentage
FROM sales
GROUP BY smoker
ORDER BY avg_tip_percentage DESC;

-- 8) Revenue by time (Lunch vs Dinner)
SELECT
  time,
  ROUND(SUM(CAST(total_bill AS REAL)), 2) AS total_revenue
FROM sales
GROUP BY time
ORDER BY total_revenue DESC;

-- 9) Peak revenue combo (day + time)
SELECT
  day,
  time,
  ROUND(SUM(CAST(total_bill AS REAL)), 2) AS total_revenue
FROM sales
GROUP BY day, time
ORDER BY total_revenue DESC;

-- 10) High value transactions (example threshold)
SELECT COUNT(*) AS high_value_transactions
FROM sales
WHERE CAST(total_bill AS REAL) > 40;

-- 11) Bill segmentation using CASE
SELECT
  CASE
    WHEN CAST(total_bill AS REAL) < 15 THEN 'Low'
    WHEN CAST(total_bill AS REAL) BETWEEN 15 AND 30 THEN 'Medium'
    ELSE 'High'
  END AS bill_category,
  COUNT(*) AS transaction_count
FROM sales
GROUP BY bill_category
ORDER BY transaction_count DESC;

