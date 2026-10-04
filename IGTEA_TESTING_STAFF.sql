USE IGTEA;
GO

INSERT INTO Orders (OrderDate, Status, CustomerID)
VALUES ('2026-10-03', 'Pending', 1);
GO

INSERT INTO Category (CategoryName) VALUES ('Should Fail');
GO