-- Total Orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- Total Sales
SELECT SUM(Net_Amount) AS Total_Sales
FROM orders;

-- Top Products
SELECT
    Product,
    SUM(Net_Amount) AS Total_Sales
FROM orders
GROUP BY Product
ORDER BY Total_Sales DESC;

-- Top Cities
SELECT
    City,
    SUM(Net_Amount) AS Total_Sales
FROM orders
GROUP BY City;

-- Monthly Sales
SELECT
    Month,
    SUM(Net_Amount) AS Total_Sales
FROM orders
GROUP BY Month;

-- Highest Profit Product
SELECT
    Product,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Product
ORDER BY Total_Profit DESC;

-- Payment Mode
SELECT
    Payment_Mode,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY Payment_Mode;

-- Cancelled Orders
SELECT *
FROM orders
WHERE Order_Status = 'Cancelled';
