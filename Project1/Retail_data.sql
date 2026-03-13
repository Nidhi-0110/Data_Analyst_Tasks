SELECT * FROM orders;

-- Change data types
ALTER TABLE orders
ALTER COLUMN sales TYPE numeric
USING REPLACE(REPLACE(sales, '$', ''), ',', '')::numeric;

ALTER TABLE orders
ALTER COLUMN profit TYPE numeric
USING profit::numeric;

ALTER TABLE orders
ALTER COLUMN order_date TYPE date
USING to_date(order_date, 'DD/MM/YYYY');

ALTER TABLE orders
ALTER COLUMN ship_date TYPE date
USING to_date(ship_date, 'DD/MM/YYYY');


--1.1 Data Cleaning Queries
-- Remove records with critical missing values
DELETE FROM orders
WHERE sales IS NULL
   OR profit IS NULL
   OR category IS NULL;

-- Remove duplicate transactions
DELETE FROM orders
WHERE order_id IN (
    SELECT order_id
    FROM orders
    GROUP BY order_id
    HAVING COUNT(*) > 1
);


--1.2 Profit Margin by Category & Sub-category
SELECT 
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 2) AS profit_margin
FROM orders
GROUP BY category, sub_category
ORDER BY profit_margin ASC;


--1.3 Contribution by Category
SELECT
    category,
    SUM(sales) AS category_sales,
    SUM(profit) AS category_profit,
    ROUND(
        SUM(profit) * 100.0 /
        (SELECT SUM(profit) FROM orders),
        2
    ) AS profit_contribution_percentage
FROM orders
GROUP BY category
ORDER BY profit_contribution_percentage DESC;


--1.4 Loss-Making Products
SELECT
    product_name,
    category,
    sub_category,
    SUM(profit) AS total_loss
FROM orders
GROUP BY product_name, category, sub_category
HAVING SUM(profit) < 0
ORDER BY total_loss asc;


--1.5 Inventory Turnover Proxy (Days in Inventory)
SELECT
    product_name,
    SUM(quantity) AS total_units_sold,
    COUNT(DISTINCT order_date) AS selling_days,
    ROUND(SUM(quantity) / COUNT(DISTINCT order_date), 2) AS avg_daily_sales
FROM orders
GROUP BY product_name;


--1.6 Seasonal Sales & Profit
SELECT
    EXTRACT(month FROM order_date) AS month,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders
GROUP BY month
ORDER BY month asc;