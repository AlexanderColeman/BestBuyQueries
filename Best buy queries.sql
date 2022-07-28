-- find all products
Select * FROM Products;
-- find all products that cost $1400
Select * FROM Products
Where products.price = 1400;

-- find all products that cost $11.99 or $13.99
Select * FROM Products
Where products.price = 11.99 OR products.price =  13.99;

-- find all products that do NOT cost 11.99 - using NOT

Select * FROM Products
Where price != 11.99;

-- find all products and sort them by price from greatest to least
SELECT * from Products
order by  price DESC;


-- find all employees who don't have a middle initial

select * From employees
Where MiddleInitial is null;

-- find distinct product prices
SELECT distinct price 
From products;


-- find all employees whose first name starts with the letter ‘j’
select * from employees
where firstname like 'j%';


-- find all Macbooks

select * from products
where Name = 'Macbook';


-- find all products that are on sale
select * from products
where OnSale = 1;


-- find the average price of all products
select avg(price) 
from products;


-- find all Geek Squad employees who don't have a middle initial
select * from employees
where title = 'Geek Squad';


-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products 
where price  between 500 and 1200
order by price;