# SQL Business Analysis (SQLite)

## Dataset
Restaurant transactions (bill, tip, day, time, party size, etc.) imported into SQLite table: `sales`.

## Goal
Answer practical business questions using SQL and extract insights.

## Key Insights (from my results)
- Total revenue: **4827.77**
- Revenue by time:
  - Dinner: **3660.30**
  - Lunch: **1167.47**
  → Dinner generates ~3× more revenue than lunch.

## What I Demonstrate
- Aggregations: `SUM`, `AVG`, `COUNT`
- Group comparisons: `GROUP BY` (day, time, smoker)
- Sorting & limiting: `ORDER BY`, `LIMIT`
- Business segmentation: `CASE WHEN`
- Data type handling in SQLite using `CAST(... AS REAL)`

## Files
- `sales.csv` — dataset
- `analysis.sql` — all queries used for analysis
- `sales.db` — local SQLite database file (optional; not required on GitHub)

## How to Run
Open `sales.db` in **DB Browser for SQLite** → Execute SQL → run queries from `analysis.sql`.
