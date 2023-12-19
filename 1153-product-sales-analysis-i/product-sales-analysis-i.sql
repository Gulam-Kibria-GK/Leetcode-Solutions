# Write your MySQL query statement below
select Product.product_name, sales.year, sales.price from sales inner join Product on sales.product_id=Product.product_id;
