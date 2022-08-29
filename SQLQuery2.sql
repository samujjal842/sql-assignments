--1.	Display the details from Customer table who is from country Germany
select * from Customer
where Country Like 'Germany'

--2.	Display the  fullname of the employee
select FirstName, Lastname from Customer

--4.	display the customer details whoes name holds second letter as U
select FirstName, Lastname from Customer
where FirstName like '_u%'

--5.	select order Details where unit price is greater than 10 and less than 20
select * from Customer
join [Order] on [order].customerId=customer.Id
join OrderItem on OrderItem.OrderId=[order].Id
join Product on Product.Id=orderItem.ProductId
where OrderItem.UnitPrice>10 and OrderItem.UnitPrice<20

--9.	print the average quantity ordered for every product
SELECT
(SELECT ProductName FROM Product
WHERE Product.Id = OrderItem.ProductId) AS Product_Name,
AVG(Quantity) AS Average_Quantity
FROM OrderItem GROUP BY ProductId