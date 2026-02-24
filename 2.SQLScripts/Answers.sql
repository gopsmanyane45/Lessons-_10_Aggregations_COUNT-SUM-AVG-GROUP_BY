

-- SECTION 1 – COUNT Aggregations (10 Questions) ? How to change word file into sql
SELECT * FROM [property24].[dbo].[property24 CSV]
SELECT PROVINCE FROM [property24].[dbo].[property24 CSV]
SELECT CITY FROM [property24].[dbo].[property24 CSV]

SELECT COUNT (*) PROVINCE  FROM [property24].[dbo].[property24 CSV] WHERE PROVINCE = 'Western Cape'
SELECT COUNT (*) PROVINCE  FROM [property24].[dbo].[property24 CSV] WHERE PROVINCE = 'Gauteng'
SELECT COUNT (*) FROM [property24].[dbo].[property24 CSV]


-- 1. How many total properties are in the database?// 100 000
SELECT COUNT (*) AS Total_Properties FROM [property24].[dbo].[property24 CSV]


--This is for testing purpose 

-- 2. How many properties are listed in each province?
SELECT  PROVINCE,
COUNT(PROVINCE) AS Total_Properties 
FROM [property24].[dbo].[property24 CSV]
GROUP BY PROVINCE

-- 3. How many properties are listed in each city?
SELECT COUNT (CITY) AS Total_CITY,CITY  FROM [property24].[dbo].[property24 CSV]GROUP BY CITY

-- 4. How many properties have more than 2 bedrooms?
SELECT COUNT (BEDROOMS) AS Total_Properties FROM [property24].[dbo].[property24 CSV] WHERE BEDROOMS > 2 


-- 5. How many properties have 2 or more bathrooms?
SELECT COUNT (*) AS Total_Properties FROM [property24].[dbo].[property24 CSV] WHERE BATHROOMS >= 2 //66688

-- 6. How many properties have parking for at least 2 cars?
SELECT COUNT (*) AS Total_Properties FROM [property24].[dbo].[property24 CSV] WHERE PARKING < 2 

-- 7. How many properties are priced above R3,000,000?// 23332

SELECT COUNT (*) AS Total_Properties FROM [property24].[dbo].[property24 CSV] WHERE PROPERTY_PRICE >  3000000

---START CHECKING FROM HERE 
-- 8. How many properties are in Gauteng?
SELECT COUNT (*) AS Total_Properties FROM [property24].[dbo].[property24 CSV] 

SELECT COUNT (*) AS Total_Properties, PROVINCE FROM [property24].[dbo].[property24 CSV] WHERE PROVINCE = 'Gauteng' GROUP BY PROVINCE


-- 9. How many properties per province have floor size greater than 200?
SELECT COUNT (FLOOR_SIZE) AS Total_Properties, PROVINCE FROM [property24].[dbo].[property24 CSV] WHERE FLOOR_SIZE  > 200 GROUP BY  PROVINCE


-- 10. How many distinct provinces are in the table? 9
SELECT COUNT (DISTINCT (PROVINCE)) , PROVINCE
FROM [property24].[dbo].[property24 CSV] 
GROUP BY  PROVINCE


-- SECTION 2 – SUM Aggregations (10 Questions)



-- 11. What is the total value of all

SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE  FROM [property24].[dbo].[property24 CSV] 

SELECT SUM(CAST(BEDROOMS AS BIGINT)) AS #BEDROOM
FROM [property24].[dbo].[property24 CSV] WHERE BEDROOMS > 2

-- 12. What is the total property value per province?
SELECT  PROVINCE,
SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS TOTAL_VALUE 
FROM [property24].[dbo].[property24 CSV]
GROUP BY PROVINCE


SELECT SUM(PROPERTY_PRICE) AS Total_Property_Value 
FROM [property24].[dbo].[property24 CSV]


SELECT SUM(BATHROOMS) AS Total_Properties 
FROM [property24].[dbo].[property24 CSV]


SELECT SUM(BATHROOMS)
FROM [property24].[dbo].[property24 CSV]



-- 13. What is the total property value per city?
SELECT CITY, SUM (Monthly_Repayment) AS TOTAL_Mothly_Repayment FROM [property24].[dbo].[property24 CSV] GROUP BY  CITY

-- 14. What is the total monthly repayment for all properties?
SELECT SUM (Monthly_Repayment) AS TOTAL_Mothly_Repayment FROM [property24].[dbo].[property24 CSV] GROUP BY  Monthly_Repayment

-- 15. What is the total monthly repayment per province?
SELECT PROVINCE,  SUM (Monthly_Repayment)  AS TOTAL_Mothly_Repayment FROM [property24].[dbo].[property24 CSV] GROUP BY  PROVINCE

-- 16. What is the total once-off cost for all properties?
SELECT SUM(CAST(Total_Once_off_Costs AS BIGINT)) AS Total_Once_OFF FROM [property24].[dbo].[property24 CSV] 199998471212

-- 17. What is the total once-off cost per province?
SELECT PROVINCE,  SUM (Monthly_Repayment)  AS TOTAL_Mothly_Repayment FROM [property24].[dbo].[property24 CSV] GROUP BY  PROVINCE


-- 18. What is the total property value for Gauteng?
SELECT PROVINCE, SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS Total_value  FROM [property24].[dbo].[property24 CSV] WHERE PROVINCE = 'Gauteng'

-- 19. What is the total property value for properties priced above R4,000,000?
SELECT SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS TOTAL_Value  FROM [property24].[dbo].[property24 CSV] WHERE PROPERTY_PRICE >= 4000000 //558857


-- 20. What is the total minimum gross monthly income required per province?
SELECT PROVINCE,  MIN (Min_Gross_Monthly_Income) AS Total_Min_Gross FROM [property24].[dbo].[property24 CSV] GROUP BY PROVINCE


-- SECTION 3 – AVG Aggregations (10 Questions)


-- 21. What is the average property price overall?
SELECT AVG(CAST(BEDROOMS AS BIGINT)) AS Property_Price  FROM [property24].[dbo].[property24 CSV] 

SELECT AVG(PROPERTY_PRICE) AS TOTAL_VALUE  FROM [property24].[dbo].[property24 CSV] 

-- 22. What is the average property price per province?
SELECT PROVINCE, AVG(PROPERTY_PRICE) AS AVG_Property_Price FROM [property24].[dbo].[property24 CSV] GROUP BY PROVINCE

SELECT  PROVINCE,
AVG(PROVINCE) AS Total_Properties 
FROM [property24].[dbo].[property24 CSV]
GROUP BY PROVINCE

-- 23. What is the average property price per city?
SELECT AVG(PROPERTY_PRICE) AS Total_CITY, CITY  FROM [property24].[dbo].[property24 CSV] GROUP BY CITY


-- 24. What is the average number of bedrooms per province?
SELECT AVG(BEDROOMS)  AS AVE_BEDROOMS, PROVINCE  FROM [property24].[dbo].[property24 CSV] GROUP BY PROVINCE


-- 25. What is the average number of bathrooms per province?
SELECT AVG(BATHROOMS)  AS AVE_BATHROOMS, PROVINCE  FROM [property24].[dbo].[property24 CSV] GROUP BY PROVINCE


-- 26. What is the average floor size per province?150 nw 149 nc 
SELECT AVG(FLOOR_SIZE) AS AVE_FLOOR_SIZE, PROVINCE  FROM [property24].[dbo].[property24 CSV] GROUP BY PROVINCE

-- 27. What is the average monthly repayment per province? 30538
SELECT AVG(Monthly_Repayment) AS AVE_FLOOR_SIZE, PROVINCE  FROM [property24].[dbo].[property24 CSV] GROUP BY PROVINCE

-- 28. What is the average once-off cost per province?
SELECT AVG(Total_Once_off_Costs) AS AVE_ONCE_Off_Cost, PROVINCE  FROM [property24].[dbo].[property24 CSV] GROUP BY PROVINCE

-- 29. What is the average minimum gross monthly income per province?
SELECT AVG(Min_Gross_Monthly_Income) AS AVE_Min_Monthly_Income, PROVINCE  FROM [property24].[dbo].[property24 CSV] GROUP BY PROVINCE

-- 30. What is the average property price for properties above R3,000,000?
SELECT AVG(PROPERTY_PRICE) AS AVE_Property_Price FROM [property24].[dbo].[property24 CSV] WHERE PROPERTY_PRICE > 3000000
SELECT AVG(PROPERTY_PRICE) AS AVG_Properties FROM [property24].[dbo].[property24 CSV] WHERE PROPERTY_PRICE >=  3000000

-- SECTION 4 – GROUP BY + Filtering (10 Questions)
-- 31. Which province has the highest average property price?


-- 32. Which province has the lowest average property price?

SELECT 

-- 33. Which city has the highest total property value?
-- 34. Which city has the lowest average property price?
-- 35. How many properties per province are priced above R2,000,000?
-- 36. What is the average floor size per province for properties above R3,000,000?
-- 37. What is the total property value per province for properties with 3 or more bedrooms?
-- 38. What is the average monthly repayment per province for properties above R4,000,000?
-- 39. How many properties per city have parking for 2 or more cars?
-- 40. What is the average minimum gross monthly income per province for properties above R5,000,000?
