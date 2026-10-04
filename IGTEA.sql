CREATE DATABASE IGTEA;
GO

USE IGTEA;
GO

CREATE TABLE Customer (
    CustomerID   INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName         VARCHAR(50) NOT NULL,
    CustomerEmail        VARCHAR(100) UNIQUE,
    CustomerPhone        VARCHAR(10),
    CustomerAddress      VARCHAR(150)
);
GO

CREATE TABLE Category (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Supplier (
SupplierID INT IDENTITY(1,1) PRIMARY KEY,
SuplierName VARCHAR(50) NOT NULL,
SuplierContactNO VARCHAR (10),SuplierAddress VARCHAR  (200)
);
GO

CREATE TABLE Product (
ProductID INT IDENTITY (1,1) PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
ProductDescription VARCHAR (300),
ProductPrice DECIMAL(10,2) NUT NULL,
ProductStockQty INT NOT NULL,
CategoryID INT NOT NULL,
SupplierID INT NOT NULL,
CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
CONSTRAINT FK_Product_Supplier FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) 
);
GO

CREATE TABLE Orders (
    OrderID      INT IDENTITY(1,1) PRIMARY KEY,
    OrderDate    DATE NOT NULL DEFAULT GETDATE(),
    OrderStatus       VARCHAR(20) NOT NULL DEFAULT 'Pending',
    CustomerID   INT NOT NULL,
    CONSTRAINT FK_Orders_Customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
GO

CREATE TABLE OrderItem (
    OrderItemID  INT IDENTITY(1,1) PRIMARY KEY,
    OrderID      INT NOT NULL,
    ProductID    INT NOT NULL,
    Quantity     INT NOT NULL CHECK (Quantity > 0),
    UnitPrice    DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_OrderItem_Order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT FK_OrderItem_Product FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
GO

CREATE TABLE Payment (
    PaymentID    INT IDENTITY(1,1) PRIMARY KEY,
    OrderID      INT NOT NULL UNIQUE,
    PaymentAmount       DECIMAL(10,2) NOT NULL,
    PaymentMethod       VARCHAR(30) NOT NULL,
    PaymentDate  DATE NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Payment_Order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
GO

CREATE TABLE Delivery (
    DeliveryID   INT IDENTITY(1,1) PRIMARY KEY,
    OrderID      INT NOT NULL UNIQUE,
    DeliveryAddress      VARCHAR(200) NOT NULL,
    DeliveryDate DATE,
    DeliveryCourierName  VARCHAR(50),
    DeliveryStatus       VARCHAR(20) NOT NULL DEFAULT 'Processing',
    CONSTRAINT FK_Delivery_Order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
GO

