-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.productName, c.CategoryName from product as p 
left join category as c on p.categoryid = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.id, s.companyname from ordershistory as o
join shipper as s on s.id=o.shipvia
where o.orderdate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.productname, od.quantity from ordershistory as oh 
join orderdetail as od 
join product as p
where oh.id=od.orderid and oh.id=10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.id, c.companyname, e.lastname from customer as c
join employee as e
join ordershistory as o
where o.customerid=c.id and o.employeeid=e.id