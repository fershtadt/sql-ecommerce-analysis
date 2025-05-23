-- 🏆 Лучшие клиенты по выручке
SELECT 
    c.full_name,
    c.email,
    SUM(p.price * oi.quantity) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY revenue DESC
LIMIT 10;