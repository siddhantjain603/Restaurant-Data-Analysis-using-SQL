-- Generate a daily sales summary showing the total sales for each day.

SELECT 
    order_details.order_date,
    SUM(menu_items.price) AS daily_sales
FROM
    restaurant_db.order_details
        JOIN
    restaurant_db.menu_items ON menu_items.menu_item_id = order_details.item_id
GROUP BY order_details.order_date;
