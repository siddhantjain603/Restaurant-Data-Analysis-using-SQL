-- Find the 5 most expensive orders.

SELECT 
    order_details.order_id, SUM(menu_items.price) AS total_price
FROM
    restaurant_db.order_details
        JOIN
    restaurant_db.menu_items ON menu_items.menu_item_id = order_details.item_id
GROUP BY order_details.order_id
ORDER BY total_price DESC
LIMIT 5;