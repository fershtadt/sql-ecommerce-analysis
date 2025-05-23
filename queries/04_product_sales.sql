-- 📦 Продажи по категориям
SELECT 
    cat.category_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(p.price * oi.quantity) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories cat ON p.category_id = cat.category_id
GROUP BY cat.category_name
ORDER BY total_revenue DESC;