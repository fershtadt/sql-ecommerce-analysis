-- 📆 RFM-анализ клиентов
WITH latest_orders AS (
    SELECT customer_id, MAX(order_date) AS last_order_date
    FROM orders
    GROUP BY customer_id
),
frequency AS (
    SELECT customer_id, COUNT(order_id) AS num_orders
    FROM orders
    GROUP BY customer_id
),
monetary AS (
    SELECT o.customer_id, SUM(p.price * oi.quantity) AS total_spent
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY o.customer_id
)
SELECT 
    c.customer_id,
    julianday('now') - julianday(lo.last_order_date) AS recency,
    f.num_orders AS frequency,
    m.total_spent AS monetary
FROM customers c
LEFT JOIN latest_orders lo ON c.customer_id = lo.customer_id
LEFT JOIN frequency f ON c.customer_id = f.customer_id
LEFT JOIN monetary m ON c.customer_id = m.customer_id;