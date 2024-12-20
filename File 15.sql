-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
Select name,Revenue 
from 
(Select category,name,Revenue,
rank() over(partition by category order by Revenue Desc ) as Ran
from 

(select pizza_types.category, pizza_types.name, sum(pizzas.price*order_details.quantity) as Revenue
from pizza_types
join pizzas
on pizza_types.pizza_type_id =	pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category, pizza_types.name) as a) as b 
where Ran <= 3 ;

