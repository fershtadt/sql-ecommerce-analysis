-- 📉 Воронка заказов
SELECT 
    status,
    COUNT(*) AS count,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM orders
GROUP BY status;