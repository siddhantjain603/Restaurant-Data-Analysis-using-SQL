 -- Calculate the total sales amount by summing up the prices of all ordered items.

SELECT 
    SUM(menu_items.price) AS total_price
FROM
    restaurant_db.menu_items
        JOIN
    restaurant_db.order_details ON menu_items.menu_item_id = order_details.item_id;