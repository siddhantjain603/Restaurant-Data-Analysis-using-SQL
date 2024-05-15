-- Calculate the cumulative sales over time, showing the running total sales amount for each day.

select sales.order_date,
sum(sales.daily_sales) over(order by sales.order_date) as cum_sales from
(SELECT 
    order_details.order_date,
    SUM(menu_items.price) AS daily_sales
FROM
    restaurant_db.order_details
        JOIN
    restaurant_db.menu_items ON menu_items.menu_item_id = order_details.item_id
GROUP BY order_details.order_date) as sales;