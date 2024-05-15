-- Count the total number of menu items in the menu_items table.

SELECT 
    COUNT(item_name) AS total_items
FROM
    restaurant_db.menu_items;