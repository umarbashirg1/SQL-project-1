-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(sum(order_details.quantity * pizzas.price),
            2) AS Total_Sale
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id;
