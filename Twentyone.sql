SELECT ROUND(SUM(CASE WHEN D.order_date = D.customer_pref_delivery_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS immediate_percentage
FROM (SELECT customer_id, MIN(order_date) AS first_order
FROM Delivery
GROUP BY customer_id) AS FirstOrders
JOIN Delivery D ON FirstOrders.first_order = D.order_date AND FirstOrders.customer_id = D.customer_id;
