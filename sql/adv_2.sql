use restaurant_db;

select sales.order_date,
	   avg(sales.total_price) OVER (ORDER BY order_date
	   rows between 6 preceding and current row) AS avg_order_value_last_7_days
from
(SELECT order_date,
SUM(menu_items.price) as total_price
FROM order_details
JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
GROUP BY order_date
ORDER BY order_date) as sales;
