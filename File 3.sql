-- Retrieve the total number of orders placed.
SELECT 
    COUNT(order_id) AS Total_Number_of_Orders
FROM
    orders;