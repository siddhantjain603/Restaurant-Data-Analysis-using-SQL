-- Identify the top 5 most ordered menu items.

SELECT 
    menu_items.item_name,
    COUNT(order_details.item_id) AS total_orders
FROM
    restaurant_db.menu_items
        JOIN
    restaurant_db.order_details ON menu_items.menu_item_id = order_details.item_id
GROUP BY menu_items.item_name
ORDER BY total_orders DESC
LIMIT 5;