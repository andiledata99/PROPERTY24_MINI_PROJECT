---QUESTION 1--Display all properties in the database.
SELECT *
FROM Data_property24;

---QUESTION 2-- Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.
SELECT CITY,PROVINCE,PROPERTY_PRICE 
FROM Data_property24;

---QUESTION 3-- List all distinct provinces in the table.
SELECT DISTINCT PROVINCE 
FROM Data_property24;

---QUESTION 4--. Find all properties located in Gauteng.
SELECT*
FROM Data_property24
WHERE PROVINCE= 'Gauteng';

---QUESTION 5--Show properties priced under R1,500,000.
SELECT*
FROM Data_property24
WHERE PROPERTY_PRICE<1500000;

---QUESTION 6-- List properties with more than 3 bedrooms.
SELECT*
FROM Data_property24
WHERE BEDROOMS>3;

---QUESTION 7-- Find properties with parking for at least 2 cars.
SELECT*
FROM Data_property24
WHERE PARKING>=2;

---QUESTION 8--Show properties where the monthly repayment is greater than R25,000.

SELECT*
FROM Data_property24
WHERE Monthly_Repayment>25000;

---QUESTION 9-- Show all properties ordered by property price from highest to lowest.
SELECT*
FROM Data_property24
ORDER BY PROPERTY_PRICE DESC;

---QUESTION 10-- List properties ordered by floor size from smallest to largest.
SELECT*
FROM Data_property24
ORDER BY FLOOR_SIZE ASC;

---QUESTION 11--. Show Gauteng properties ordered by monthly repayment.
SELECT*
FROM Data_property24
WHERE PROVINCE='Gauteng'
ORDER BY Monthly_Repayment;

---QUESTION 12-- Find Western Cape properties priced below R3,000,000.

SELECT*
FROM Data_property24
WHERE PROVINCE= 'Western Cape' AND PROPERTY_PRICE<3000000;

---QUESTION 13--Show KwaZulu-Natal properties with 3 or more bedrooms.
SELECT*
FROM Data_property24
WHERE PROVINCE = 'KwaZulu-Natal' AND BEDROOMS>=3;

---QUESTION 14-- Find properties in Limpopo or Free State ordered by property price.
SELECT*
FROM Data_property24
WHERE PROVINCE IN ('Limpopo', 'Free State')
ORDER BY PROPERTY_PRICE;

---QUESTION 15-- Show the 10 most expensive properties.
SELECT TOP 10 *
FROM Data_property24
ORDER BY PROPERTY_PRICE DESC;

---QUESTION 16--Show the 5 cheapest properties.
SELECT TOP 5 *
FROM Data_property24
ORDER BY PROPERTY_PRICE ASC;

---QUESTION 17--Show the top 10 properties with the largest floor size.

SELECT TOP 10 *
FROM Data_property24
ORDER BY FLOOR_SIZE DESC;

---QUESTION 18--Which province appears to have the highest priced properties?

SELECT TOP 1 PROVINCE
FROM Data_property24
ORDER  BY (PROPERTY_PRICE) DESC;

---QUESTION 19-- Which cities appear to have the most affordable housing?
SELECT  TOP 25 CITY
FROM Data_property24
ORDER  BY (PROPERTY_PRICE) ASC;

---QUESTION 20-- What minimum income is typically required for properties priced above R4,000,000?
SELECT TOP 1
        Min_Gross_Monthly_Income,
        PROPERTY_PRICE
  FROM Data_property24
  WHERE PROPERTY_PRICE > 4000000
  ORDER BY Min_Gross_Monthly_Income ASC;



