-- Determine the average price of menu items.

SELECT 
    ROUND(AVG(price), 2) AS avg_price
FROM
    restaurant_db.menu_items;