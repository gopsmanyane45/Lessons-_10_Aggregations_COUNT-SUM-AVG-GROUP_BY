

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


-- 10. How many distinct provinces are in the table?
SELECT COUNT (DISTINCT (PROVINCE) AS D_Provinces  FROM [property24].[dbo].[property24 CSV]  GROUP BY  PROVINCE


-- SECTION 2 – SUM Aggregations (10 Questions)

SELECT SUM    FROM [property24].[dbo].[property24 CSV] GROUP BY PROPERTY_ID


-- 11. What is the total value of all
SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE  FROM [property24].[dbo].[property24 CSV];
SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE  FROM [property24].[dbo].[property24 CSV] 

-- 12. What is the total property value per province?

SELECT  PROVINCE,
SUM(PROPERTY_ID) AS Total_Properties 
FROM [property24].[dbo].[property24 CSV]
GROUP BY PROVINCE

-- 13. What is the total property value per city?

SELECT SUM (*) AS CITY FROM [property24].[dbo].[property24 CSV] GROUP BY  CITY

-- 14. What is the total monthly repayment for all properties?
SELECT SUM (*) AS TOTAL_Mothly_Repayment FROM [property24].[dbo].[property24 CSV] GROUP BY  Monthly_Repayment

-- 15. What is the total monthly repayment per province?
SELECT SUM (*) AS Per_Provinces, PROVINCE FROM [property24].[dbo].[property24 CSV] GROUP BY  PROVINCE

-- 16. What is the total once-off cost for all properties?
SELECT SUM (*) AS Total_Once_OFF FROM [property24].[dbo].[property24 CSV] GROUP BY  Total_Once_off_Costs

-- 17. What is the total once-off cost per province?
SELECT SUM (*) AS D_Provinces, PROVINCE FROM [property24].[dbo].[property24 CSV] GROUP BY  Total_Once_off_Costs


-- 18. What is the total property value for Gauteng?
SELECT SUM (*) AS Total_Once_OFF, PROVINCE FROM [property24].[dbo].[property24 CSV] WHERE PROVINCE = 'Gauteng'

-- 19. What is the total property value for properties priced above R4,000,000?
SELECT SUM (*) AS D_Provinces, PROVINCE FROM [property24].[dbo].[property24 CSV] WHERE PROVINCE = ' Gauteng'


-- 20. What is the total minimum gross monthly income required per province?
SELECT MIN (Min_Gross_Monthly_Income) AS Total_Min_Gross, Min_Gross_Monthly_Income FROM [property24].[dbo].[property24 CSV] GROUP BY  Min_Gross_Monthly_Income


-- SECTION 3 – AVG Aggregations (10 Questions)


-- 21. What is the average property price overall?
SELECT AVG(PROPERTY_PRICE) AS TOTAL_VALUE  FROM [property24].[dbo].[property24 CSV] WHERE CITY = 'Sea Point'


SELECT AVG(PROPERTY_PRICE) AS TOTAL_VALUE  FROM [property24].[dbo].[property24 CSV] 

-- 22. What is the average property price per province?

SELECT  PROVINCE,
AVG(PROVINCE) AS Total_Properties 
FROM [property24].[dbo].[property24 CSV]
GROUP BY PROVINCE

-- 23. What is the average property price per city?
SELECT AVG(CITY) AS Total_CITY  FROM [property24].[dbo].[property24 CSV] GROUP BY CITY


-- 24. What is the average number of bedrooms per province?
-- 25. What is the average number of bathrooms per province?
-- 26. What is the average floor size per province?
-- 27. What is the average monthly repayment per province?
-- 28. What is the average once-off cost per province?
-- 29. What is the average minimum gross monthly income per province?
-- 30. What is the average property price for properties above R3,000,000?

-- SECTION 4 – GROUP BY + Filtering (10 Questions)
-- 31. Which province has the highest average property price?
-- 32. Which province has the lowest average property price?
-- 33. Which city has the highest total property value?
-- 34. Which city has the lowest average property price?
-- 35. How many properties per province are priced above R2,000,000?
-- 36. What is the average floor size per province for properties above R3,000,000?
-- 37. What is the total property value per province for properties with 3 or more bedrooms?
-- 38. What is the average monthly repayment per province for properties above R4,000,000?
-- 39. How many properties per city have parking for 2 or more cars?
-- 40. What is the average minimum gross monthly income per province for properties above R5,000,000?
