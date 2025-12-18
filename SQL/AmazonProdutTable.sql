CREATE TABLE ProductTable(
	ProdId INT IDENTITY(1,1) PRIMARY KEY,
	PName VARCHAR(100),
	Brand VARCHAR(100),
	ManuDate DATE,
	ExDate DATE
);

ALTER TABLE ProductTable
ADD Price DECIMAL(10, 2);
INSERT INTO ProductTable (PName, Brand, ManuDate, ExDate, Price)
VALUES
('IPhone 17', 'Apple', '2025-10-15', '2030-10-15', 999.99),
('Galaxy Z Fold 6', 'Samsung', '2025-08-01', '2030-08-01', 1799.99),
('Pixel 9', 'Google', '2025-09-05', '2030-09-05', 899.99),
('OnePlus 12', 'OnePlus', '2025-11-10', '2030-11-10', 799.99),
('Xperia 2', 'Sony', '2025-07-20', '2030-07-20', 749.99),
('Nokia X100', 'Nokia', '2025-06-15', '2030-06-15', 599.99),
('Surface Phone 2', 'Microsoft', '2025-05-25', '2030-05-25', 1099.99),
('Moto Edge 2025', 'Motorola', '2025-12-01', '2030-12-01', 649.99),
('Razer Phone 4', 'Razer', '2025-04-10', '2030-04-10', 899.99),
('Huawei P100', 'Huawei', '2025-03-30', '2030-03-30', 799.99),
('LG V70', 'LG', '2025-02-18', '2030-02-18', 699.99);
SELECT * FROM ProductTable
DELETE FROM ProductTable
WHERE Price IS NULL;
UPDATE ProductTable
SET Price = 1100.00
WHERE PName = 'IPhone 17';

