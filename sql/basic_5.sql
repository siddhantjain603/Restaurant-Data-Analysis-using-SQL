-- Calculate the total sales amount for each category of menu items.

SELECT 
    category, SUM(price) AS total_price
FROM
    restaurant_db.menu_items
GROUP BY category;