CREATE TABLE Product (
	ProductId INT IDENTITY(1,1) PRIMARY KEY,
    PName VARCHAR(100),
    Brand VARCHAR(100),
    Price DECIMAL(10, 2)
);
CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(100),
    OrderDate DATE,
    ProductId INT,
    Quantity INT
);
INSERT INTO Product (PName, Brand, Price)
VALUES
('IPhone 17', 'Apple', 999.99),
('Galaxy Z Fold 6', 'Samsung', 1799.99),
('Pixel 9', 'Google', 899.99);
INSERT INTO Orders (CustomerName, OrderDate, ProductId, Quantity)
VALUES
('John Doe', '2025-11-01', 1, 2), 
('Jane Smith', '2025-11-02', 2, 1), 
('Emily Clark', '2025-11-03', 3, 3), 
('John Doe', '2025-11-05', 2, 1);
SELECT
	p.PName,
	o.CustomerName
FROM Product p
INNER JOIN Orders o
	ON p.ProductId = o.OrderId;
SELECT
	p.PName,
	o.CustomerName
FROM Product p
LEFT JOIN Orders o
SELECT
	p.PName,
	o.CustomerName
FROM Product p
RIGHT JOIN Orders o
	ON p.ProductId = o.OrderId;
	ON p.ProductId = o.OrderId;

