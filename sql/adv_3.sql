-- Get the top 3 menu item from each category based on their total sales

select sales.category, sales.item_name, sales.total_sales
from
(select menu_items.category, menu_items.item_name,
	   sum(menu_items.price) as total_sales,
       rank() over(partition by menu_items.category order by sum(menu_items.price) desc) as ranking
from restaurant_db.menu_items
join restaurant_db.order_details
on menu_items.menu_item_id = order_details.item_id
group by menu_items.category, menu_items.item_name) as sales
where sales.ranking <=3
