-- Retrieve a list of orders along with the names of the menu items in each order.

SELECT 
    order_details.*, menu_items.item_name
FROM
    restaurant_db.menu_items
        JOIN
    restaurant_db.order_details ON menu_items.menu_item_id = order_details.item_id;