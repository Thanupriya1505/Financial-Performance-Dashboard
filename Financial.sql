CREATE DATABASE financials_db;
USE financials_db;

SELECT * FROM financials
LIMIT 10;

----- Total Sales ------
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM financials;

------ Total Profit -----
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM financials;

---- Units Sold ----
SELECT SUM(`Units Sold`) AS Total_Units_Sold
FROM financials;

---- Total Countries ----
SELECT COUNT(DISTINCT Country) AS Total_Countries
FROM financials;

---- Total Products ---
SELECT COUNT(DISTINCT Product) AS Total_Products
FROM financials;

--- Total Gross Sales ----
SELECT SUM(`Gross Sales`) AS Total_Gross_Sales
FROM financials;

---- Profit Margin % ----
SELECT ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM financials;

----- Sales by Country ----
SELECT
    Country,
    SUM(Sales) AS Total_Sales
FROM financials
GROUP BY Country
ORDER BY Total_Sales DESC;

---- Profit by Product ----
SELECT 
    Product, SUM(Profit) AS Total_Profit
FROM
    financials
GROUP BY Product
ORDER BY Total_Profit DESC;

---- Sales by Segment ----
SELECT
    Segment,
    SUM(Sales) AS Total_Sales
FROM financials
GROUP BY Segment
ORDER BY Total_Sales DESC;

---- Monthly Sales Trend ---
SELECT
    `Month Name`,
    SUM(Sales) AS Total_Sales
FROM financials
GROUP BY `Month Name`
ORDER BY MIN(`Month Number`);

---- Discount Band Analysis ----
SELECT
    `Discount Band`,
    SUM(Sales) AS Total_Sales
FROM financials
GROUP BY `Discount Band`;