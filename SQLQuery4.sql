--4.Write a query to get most expense and least expensive Product list (name and unit price)
select ProductName from Product as pdt
where pdt.UnitPrice = (select max(unitprice) from Product)

select ProductName from Product as pdt
where pdt.UnitPrice = (select min(unitprice) from Product)


--5.Display the list of products that are out of stock
select * from Product
where product.IsDiscontinued = 'True'


--8.Display complete list of customers, the OrderID and date of any orders they have made
select customer.Id, FirstName,Lastname,Country,Phone,[order].Id,[order].OrderDate from Customer
join [Order] on [order].CustomerId= Customer.Id


--10.Display the customerid whose name has substring ‘RA’
select Customer.Id from Customer
where Customer.FirstName like '%ra%' or Customer.Lastname like '%ra%'



