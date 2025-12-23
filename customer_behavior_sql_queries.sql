create database customer_behavior;
use customer_behavior;
select*from customer;

select gender ,sum(purchase_amount) 
from customer
group  by gender;

select customer_id,purchase_amount
from customer
where discount_applied='Yes' and purchase_amount >= (select avg(purchase_amount)from customer);

SELECT 
    item_purchased,
    ROUND(AVG(review_rating), 2) AS `average_product_rating`
FROM customer
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC
LIMIT 5;

select shipping_type,
round(avg(purchase_amount),2)
from customer
where shipping_type in ('Standard','Express')
GROUP BY shipping_type;

