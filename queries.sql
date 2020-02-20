-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

 SELECT Product.ProductName, Category.CategoryName
From Product
Left Join Category ON Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, CompanyName, OrderDate
FROM [Order] as O
    JOIN Shipper
    ON Shipper.id = O.ShipVia
WHERE O.OrderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity
FROM OrderDetail
    JOIN [Product] AS P 
WHERE OrderId = '10251' AND P.Id = ProductId

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.id AS [Order Number], c.CompanyName AS Company, e.LastName AS Employee
FROM [Order] AS o
JOIN Customer AS c
ON o.CustomerId = c.Id
JOIN Employee AS e
ON o.EmployeeId = e.Id;