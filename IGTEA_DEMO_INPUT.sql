USE IGTEA;
GO

INSERT INTO Category (CategoryName) VALUES
('Black Tea'), ('Green Tea'), ('Herbal Tea'), ('White Tea'),
('Oolong Tea'), ('Flavored Tea'), ('Tea Accessories'), ('Gift Sets'),
('Organic Tea'), ('Iced Tea');
GO


INSERT INTO Supplier (SupplierName, SupplierContactNo, SupplierAddress) VALUES
('Ceylon Tea Traders', '0112233445', '12 Galle Road, Colombo'),
('Highland Estates', '0771234567', '45 Nuwara Eliya Rd, Kandy'),
('Green Leaf Imports', '0112987654', '78 Negombo Rd, Negombo'),
('Pure Herb Suppliers', '0765551234', '23 Matara Rd, Galle'),
('Oriental Tea Co.', '0112345678', '9 Main St, Jaffna'),
('Spice & Tea Ltd', '0778887766', '56 Temple Rd, Kurunegala'),
('Mountain Fresh Tea', '0112112233', '34 Hill St, Badulla'),
('Organic Roots Pvt Ltd', '0774455667', '19 Lake Rd, Ratnapura'),
('TeaBox Accessories', '0112998877', '5 Station Rd, Gampaha'),
('Golden Leaf Exports', '0779988776', '88 Harbor Rd, Trincomalee');
GO

INSERT INTO Product (ProductName, ProductDescription, ProductPrice, ProductStockQty, CategoryID, SupplierID) VALUES
('Ceylon Breakfast Tea', 'Strong black tea blend', 450.00, 120, 1, 1),
('Jasmine Green Tea', 'Green tea with jasmine flowers', 550.00, 90, 2, 3),
('Chamomile Herbal Tea', 'Caffeine-free herbal infusion', 600.00, 75, 3, 4),
('Silver Needle White Tea', 'Premium white tea', 1200.00, 40, 4, 2),
('Milk Oolong Tea', 'Creamy oolong blend', 800.00, 60, 5, 5),
('Peach Flavored Tea', 'Black tea with peach notes', 500.00, 85, 6, 6),
('Glass Teapot', 'Heat-resistant glass teapot', 2500.00, 25, 7, 9),
('Tea Gift Hamper', 'Assorted tea gift set', 3000.00, 15, 8, 8),
('Organic Green Tea', 'Certified organic green tea', 700.00, 50, 9, 8),
('Lemon Iced Tea Mix', 'Instant iced tea mix', 350.00, 100, 10, 6),
('Earl Grey Tea', 'Black tea with bergamot', 480.00, 95, 1, 1),
('Sencha Green Tea', 'Japanese-style green tea', 650.00, 55, 2, 3);
GO

INSERT INTO Orders (OrderDate, OrderStatus, CustomerID) VALUES
('2026-09-01', 'Delivered', 1),
('2026-09-03', 'Delivered', 2),
('2026-09-05', 'Delivered', 3),
('2026-09-08', 'Shipped', 4),
('2026-09-10', 'Delivered', 5),
('2026-09-12', 'Pending', 6),
('2026-09-15', 'Delivered', 7),
('2026-09-18', 'Shipped', 8),
('2026-09-20', 'Delivered', 9),
('2026-09-22', 'Pending', 10);
GO

INSERT INTO OrderItem (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 2, 450.00),
(1, 3, 1, 600.00),
(2, 2, 3, 550.00),
(3, 4, 1, 1200.00),
(4, 5, 2, 800.00),
(5, 6, 4, 500.00),
(6, 7, 1, 2500.00),
(7, 8, 1, 3000.00),
(8, 9, 2, 700.00),
(9, 10, 5, 350.00),
(10, 11, 3, 480.00),
(2, 12, 2, 650.00);
GO

INSERT INTO Payment (OrderID, PaymentAmount, PaymentMethod, PaymentDate) VALUES
(1, 1500.00, 'Card', '2026-09-01'),
(2, 2950.00, 'Cash', '2026-09-03'),
(3, 1200.00, 'Card', '2026-09-05'),
(4, 1600.00, 'Online', '2026-09-08'),
(5, 2000.00, 'Cash', '2026-09-10'),
(6, 2500.00, 'Card', '2026-09-12'),
(7, 3000.00, 'Online', '2026-09-15'),
(8, 1400.00, 'Cash', '2026-09-18'),
(9, 1750.00, 'Card', '2026-09-20'),
(10, 1440.00, 'Online', '2026-09-22');
GO

INSERT INTO Review (ProductID, CustomerID, Rating, Comment) VALUES
(1, 1, 5, 'Rich and strong flavor'),
(2, 2, 4, 'Smells wonderful'),
(3, 3, 5, 'Very relaxing'),
(4, 4, 4, 'Premium quality'),
(5, 5, 3, 'Good but pricey'),
(6, 6, 4, 'Nice fruity taste'),
(7, 7, 5, 'Elegant design'),
(8, 8, 5, 'Great gift option'),
(9, 9, 4, 'Fresh and organic'),
(10, 10, 3, 'Easy to prepare'),
(11, 1, 4, 'Classic taste'),
(12, 2, 5, 'Authentic Japanese flavor');
GO
