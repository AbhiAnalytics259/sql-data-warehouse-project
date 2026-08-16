/*
================================================================================
Quality Checks
================================================================================
Script Purpose:
        This cript performs quality checks to validate the integrity, consistency,
        and accuracy of the gold layer .These checks ensures:
       - Uniqunessand of surrogate keys in dimension tables.
       - Referential integrity between fact and dimension tables.
       - Validation of relationships in the data model for analytical purposes.

Usages Notes:
     - Run these checks after data loading silver layer.
     - Investigate and resolve any discreption found during checks.
====================================================================================
*/

--====================================================================================
--Checking 'gold.dim_customers'
--====================================================================================
--Checking for uniquness of customer key in gold.dim_products
--expection: No results
customer_key,
COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1

--====================================================================================
--Checking 'gold.product_key'
--====================================================================================
--Checking for uniquness of product key in gold.dim_products
--expection: No results
SELECT 
product_key,
COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1
--====================================================================================
--Checking 'gold.fact_sales'
--====================================================================================
--Check the data model connectivity between fact and dimensions
SELECT *
FROM gold.fact_sales f
LEFT JOIN gold .dim_customers c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
WHERE C.customer_number IS NULL
