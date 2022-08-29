--1.Desgin the above database with following table by applying Primary key and Foreign key
--Done

--2.Insert Records in all tables 
--completed

--3.In Customer table FirstName Attribute should not accept null value
--Done

--4.In Order table OrderDate should not accept null value
--Done

--5.Display all customer details
select * from Customer

--6.write a query to display Country whose name starts with A or I
select Country from Customer
where Country Like 'A%' or Country like 'I%' 

--7 .write a query to display whose name of customer whose third character is i
select FirstName, Lastname from Customer
where FirstName like '__i%'

select * from OrderItem
select * from Product
select * from [Order]

select CURRENT_TIMESTAMP as _current_timestamp


