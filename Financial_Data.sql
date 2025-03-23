create database FinancialData;

use FinancialData;

-- Load the all data 

CREATE TABLE SalesData (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Segment VARCHAR(50),
    Country VARCHAR(50),
    Product VARCHAR(50),
    Discount_Band VARCHAR(50),
    Units_Sold DECIMAL(10,2),
    Manufacturing_Price INT(10),
    Sale_Price INT(10),
    Gross_Sales DECIMAL(15,2),
    Discounts DECIMAL(15,2),
    Sales DECIMAL(15,2),
    COGS DECIMAL(15,2),
    Profit DECIMAL(15,2),
    Sale_Date DATE,
    Month_Number INT,
    Month_Name VARCHAR(20),
    Year INT(10)
);

select * from SalesData;

# Import the data from csv file

SELECT Sales FROM SalesData LIMIT 10;

-- 1) What are the top 5 countries with the highest total sales?

SELECT Country, SUM(Sales) AS Total_Sales
FROM SalesData
GROUP BY Country
ORDER BY Total_Sales DESC
LIMIT 5;

 
 -- 2) What is the total profit for each year?
 
SELECT Year, SUM(Profit) AS Total_Profit
FROM SalesData
GROUP BY Year
ORDER BY Year;

 
 -- 3) Which product generated the highest revenue? 
 
SELECT Product, SUM(Gross_Sales) AS Total_Revenue
FROM SalesData
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 1;

 
 -- 4) What is the average discount given for each segment?
 
SELECT Segment, AVG(Discounts) AS Avg_Discount
FROM SalesData
GROUP BY Segment
ORDER BY Avg_Discount DESC;

 
 -- 5)  Show Total Units Sold Year-Wise?

SELECT Year, Product, SUM(Units_Sold) AS Total_Units_Sold
FROM SalesData
GROUP BY Year, Product
ORDER BY Year, Total_Units_Sold DESC;

