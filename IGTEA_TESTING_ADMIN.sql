USE IGTEA;
GO

INSERT INTO Category (CategoryName) VALUES ('Spiced Tea');
GO

DELETE FROM Category WHERE CategoryName = 'Spiced Tea';
GO


INSERT INTO Product (ProductID, ProductName, ProductDescription, ProductPrice, ProductStockQty, CategoryID, SupplierID)
VALUES (1, 'Duplicate PK Test', 'Should fail', 100.00, 10, 1, 1);
GO

INSERT INTO Product (ProductName, ProductDescription, ProductPrice, ProductStockQty, CategoryID, SupplierID)
VALUES ('Bad FK Test', 'Should fail', 100.00, 10, 999, 1);
GO

INSERT INTO Review (ProductID, CustomerID, Rating, Comment)
VALUES (1, 1, 9, 'Should fail - rating out of range');
GO

INSERT INTO Customer (CustomerName, CustomerEmail, CustomerPhone, CustomerAddress)
VALUES (NULL, 'test@email.com', '0712345678', 'Test Address');
GO

INSERT INTO Customer (CustomerName, CustomerEmail, CustomerPhone, CustomerAddress)
VALUES ('Duplicate Email Test', 'nimal.perera@email.com', '0710000000', 'Test');
GO

