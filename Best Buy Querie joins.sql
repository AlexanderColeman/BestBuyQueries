/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 Select p.name, c.name,c.CategoryID 
 From Categories c
 right join products p 
 on p.CategoryID = c.CategoryID
 where c.name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 Select p.name, p.price, r.Rating
 from products p
 right join reviews r 
 on p.ProductID = r.ProductID
 where r.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.FirstName, sum(s.Quantity), s.EmployeeID
from employees e 
inner join sales s 
on e.EmployeeID = s.EmployeeID
group by s.EmployeeID
order by sum(s.Quantity) Desc;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select d.name, c.name
From departments d 
join categories c 
on d.DepartmentID = c.DepartmentID
where c.Name = 'Appliances' or c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.name, sum(s.Quantity)*s.PricePerUnit
from sales s 
inner join products p 
on s.ProductID = p.ProductID
where p.name = 'Eagles: Hotel California';

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

select p.name, r.Reviewer, Min(r.Rating), r.comment
from reviews r inner join
products p on p.ProductID = r.ProductID
where p.name = 'Visio Tv';

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

select e.employeeID, e.firstName, e.LastName, p.name, s.quantity
from employees e 
inner join sales s
on e.EmployeeID = s.EmployeeID
inner join products p on s.ProductID = p.productId
order by e.FirstName;
