USE sales_summary_db_2026;
SELECT * FROM order_items;
SELECT 
    s.store_name,
    SUM(oi.quantity * oi.list_price) AS total_sales
FROM stores s
JOIN orders o 
    ON s.store_id = o.store_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
WHERE o.order_status = 4
GROUP BY s.store_name;