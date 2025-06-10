
CREATE DATABASE IF NOT EXISTS sales_data;
USE sales_data;


CREATE TABLE online_sales (
    `Order ID` VARCHAR(50) PRIMARY KEY,
    `Order Date` DATE,
    `Product ID` VARCHAR(50),
    `Product Name` VARCHAR(255),
    `Quantity` INT,
    `Unit Price` DECIMAL(10,2),
    `Sale Price` DECIMAL(10,2),
    `Customer ID` VARCHAR(50),
    `Customer Name` VARCHAR(255),
    `Region` VARCHAR(50),
    `Channel` VARCHAR(50),
    `Payment Method` VARCHAR(50)
);


SELECT
    EXTRACT(YEAR FROM `Order Date`) AS sales_year,
    EXTRACT(MONTH FROM `Order Date`) AS sales_month,
    SUM(`Sale Price`) AS monthly_revenue,
    COUNT(DISTINCT `Order ID`) AS monthly_order_volume
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM `Order Date`),
    EXTRACT(MONTH FROM `Order Date`)
ORDER BY
    sales_year,
    sales_month;
