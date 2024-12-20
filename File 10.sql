-- Join relevant tables to find the category-wise distribution of pizzas.
Select Category, count(name) from pizza_types
group by category;