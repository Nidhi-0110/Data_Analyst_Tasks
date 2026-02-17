/* 1. BASIC DATA EXPLORATION */
SELECT * FROM customers LIMIT 10;
SELECT * FROM orders LIMIT 10;


/* 2. USING WHERE CLAUSE */
-- Get only delivered orders
SELECT order_id, order_status
FROM orders
WHERE order_status = 'delivered';


/* 3. ORDER BY */
-- Latest orders first
SELECT order_id, order_purchase_timestamp
FROM orders
ORDER BY order_purchase_timestamp DESC;


/* 4. AGGREGATE FUNCTIONS + GROUP BY */
-- Total number of orders per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

-- Average payment value
SELECT AVG(payment_value) AS average_payment
FROM order_payments;


/* 5. JOINS (INNER JOIN) */
-- Orders with customer city and state
SELECT o.order_id,
       c.customer_city,
       c.customer_state
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;


/* 6. LEFT JOIN */
-- All customers and their orders (even if no orders)
SELECT c.customer_id,
       o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


/* 7. SUBQUERY */
-- Orders with payment higher than average payment
SELECT order_id, payment_value
FROM order_payments
WHERE payment_value >
(
    SELECT AVG(payment_value)
    FROM order_payments
);


/* 8. MULTI-TABLE JOIN */
-- Order value with customer location
SELECT o.order_id,
       c.customer_city,
       SUM(p.payment_value) AS total_payment
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_payments p ON o.order_id = p.order_id
GROUP BY o.order_id, c.customer_city;


/* 9. CREATE VIEW */
-- View for customer order summary
CREATE VIEW customer_order_summary AS
SELECT c.customer_id,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id;


-- Use the view
SELECT * FROM customer_order_summary;


/* 10. QUERY OPTIMIZATION USING INDEX */
-- Index on customer_id to improve join performance
CREATE INDEX idx_orders_customer_id
ON orders(customer_id);


/* 11. NULL HANDLING */
-- Replace NULL review scores with 0
SELECT
    COALESCE(review_score, 0) AS review_score
FROM order_reviews;

