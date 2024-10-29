-- 1. Find the count of total customers of the company.
SELECT count(*) FROM sales.customers;
-- 2. Give details about the first 5 transactions.
select * from sales.transactions limit 5;
-- 3. Give me all the records where market code is "Mark001".
select * from sales.transactions where market_code = 'Mark001';
-- 4. How many transactions were performed in Chennai.
select count(*) from sales.transactions where market_code = 'Mark001';
-- 5. How many transactions are in USD?
select * from sales.transactions where currency = 'USD';
-- 6. Join the transactions and date table.
select  sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date;
-- 7. Show all the transactions done in the year 2020.
select  sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020;
-- 8. Calculate the total revenue generated in the year 2020.
select  sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where sales.date.year = 2020;
-- 9. Calculate the revenue generated in Chennai in 2020.
select  sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where 
sales.date.year = 2020 and sales.transactions.market_code = "Mark001";
-- 10. Show all the distinct products sold in Chennai.
select distinct product_code from sales.transactions where market_code = "Mark001";  
