create database sales_analysis;
use sales_analysis;
create table online_sales (
   id INT AUTO_INCREMENT ,
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID INT,
    Country VARCHAR(50)
);
ALTER TABLE online_sales 
MODIFY InvoiceDate VARCHAR(50);
ALTER TABLE online_sales 
MODIFY InvoiceDate VARCHAR(50),
MODIFY CustomerID VARCHAR(50);
DROP TABLE IF EXISTS online_sales;
CREATE TABLE online_retail (
    InvoiceNo VARCHAR(50),
    StockCode VARCHAR(50),
    Description TEXT,
    Quantity VARCHAR(50),
    InvoiceDate VARCHAR(50),
    UnitPrice VARCHAR(50),
    CustomerID VARCHAR(50),
    Country VARCHAR(50)
);
LOAD DATA LOCAL INFILE "C:\Users\Shalini B\Downloads\online_retail.csv"
INTO TABLE online_retail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
DROP TABLE IF EXISTS online_sales;
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO online_sales VALUES
(1, '2024-01-05', 250, 101),
(2, '2024-01-10', 300, 102),
(3, '2024-02-15', 150, 103),
(4, '2024-02-20', 400, 104),
(5, '2024-03-05', 500, 105),
(6, '2024-03-18', 200, 101),
(7, '2024-04-01', 450, 102),
(8, '2024-04-12', 600, 103),
(9, '2024-05-08', 700, 104),
(10, '2024-05-20', 800, 105);
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
