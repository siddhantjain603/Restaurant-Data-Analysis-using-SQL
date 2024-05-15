-- List the menu items that were ordered in January 2023.

SELECT 
    menu_items.item_name, order_details.order_date
FROM
    restaurant_db.menu_items
        JOIN
    restaurant_db.order_details ON menu_items.menu_item_id = order_details.item_id
WHERE
    order_details.order_date BETWEEN '2023-01-01' AND '2023-01-31';
