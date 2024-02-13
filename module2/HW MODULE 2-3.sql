
--OVERVIEW:

select SUM(SALES) from orders
where extract('year' from order_date) = 2018; --Total sales

select SUM(profit) from orders; --Total sales

select sum(sales), sum(profit), SUM(profit)/SUM(SALES) from orders; --Total sales

select order_id, sum(profit) from orders
group by order_id; --profit per order


select customer_name, sum(sales) from orders 
group by customer_name; --sales per customer

select avg(discount) from orders; --average discount

SELECT TO_CHAR(order_date, 'YYYY-MM') as Year_Month, sum(sales) FROM orders
group by TO_CHAR(order_date, 'YYYY-MM')
order by 1 asc; -- sales per month

--PRODUCT DASHBOARD:

select category, sum(sales) from orders 
group by category; --sales by Category

--CUSTOMER ANALYSIS:

select customer_name, sum(sales) as Total_Sum, sum(profit) as Total_Profit from orders
group by customer_name
order by 2 desc, 3 desc; -- Sales and Profit by Customers

with cte as 
(select customer_name, sum(profit) as Total_Profit from orders
group by customer_name)

select customer_name, row_number () over(order by total_profit desc) as ranking from cte --CUSTOMER RANKING


select region, sum(profit) from orders
group by region; --Sales per region





select * from orders 
select * from people 
select * from returns

