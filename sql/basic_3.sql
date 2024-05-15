-- Find the number of orders placed each day.

SELECT 
    order_date, COUNT(*) AS total_orders
FROM
    restaurant_db.order_details
GROUP BY order_date;
