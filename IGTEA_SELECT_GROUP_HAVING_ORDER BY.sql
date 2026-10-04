USE IGTEA;
GO

SELECT ProductName, ProductPrice, ProductStockQty
FROM Product
WHERE ProductPrice > 500;
GO

SELECT CustomerName, CustomerEmail, CustomerAddress
FROM Customer
WHERE CustomerAddress LIKE '%Colombo%' OR CustomerAddress LIKE '%Kandy%';
GO

SELECT OrderID, OrderDate, OrderStatus
FROM Orders
WHERE OrderStatus = 'Pending';
GO

SELECT ProductName, ProductStockQty
FROM Product
WHERE ProductStockQty < 50;
GO

SELECT ReviewID, ProductID, Rating, Comment
FROM Review
WHERE Rating = 5;
GO




SELECT CategoryID, SUM(ProductStockQty) AS TotalStock
FROM Product
GROUP BY CategoryID
ORDER BY TotalStock DESC;
GO

SELECT SupplierID, COUNT(*) AS ProductCount
FROM Product
GROUP BY SupplierID
HAVING COUNT(*) >= 2
ORDER BY ProductCount DESC;
GO

SELECT ProductID, AVG(CAST(Rating AS DECIMAL(3,1))) AS AvgRating
FROM Review
GROUP BY ProductID
HAVING AVG(CAST(Rating AS DECIMAL(3,1))) > 4
ORDER BY AvgRating DESC;
GO

SELECT ProductID, SUM(Quantity) AS TotalSold
FROM OrderItem
GROUP BY ProductID
HAVING SUM(Quantity) > 2
ORDER BY TotalSold DESC;
GO





SELECT o.OrderID, c.CustomerName AS CustomerName, o.OrderDate, o.OrderStatus
FROM Orders o
JOIN Customer c ON o.CustomerID = c.CustomerID
ORDER BY o.OrderDate;
GO

SELECT p.ProductName AS ProductName, cat.CategoryName, s.SupplierName AS SupplierName, p.ProductPrice
FROM Product p
JOIN Category cat ON p.CategoryID = cat.CategoryID
JOIN Supplier s ON p.SupplierID = s.SupplierID;
GO

SELECT oi.OrderItemID, o.OrderID, p.ProductName AS ProductName, oi.Quantity, oi.UnitPrice, o.OrderStatus
FROM OrderItem oi
JOIN Orders o ON oi.OrderID = o.OrderID
JOIN Product p ON oi.ProductID = p.ProductID;
GO

