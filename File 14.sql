##### Analyze the cumulative revenue generated over time.
Select order_date, 
sum(Revenue) over (order by order_date) as cum_revenue
From
(Select orders.order_date,
sum(order_details.quantity*pizzas.price) as Revenue 
from order_details 
join pizzas
on order_details.pizza_id = pizzas.pizza_id
join orders
on orders.order_id = order_details.order_id
group by orders.order_date) as Sale;
