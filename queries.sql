-- 1- from “orderdetails” table. Write a query to get all order numbers (without repetition) that contain any product starting with code S18 and price more than 100.

SELECT DISTINCT orderNumber , productCode , priceEach FROM `orderdetails`
 WHERE productCode LIKE "s18%"
 AND priceEach > 100;



--  2- from “payments” table. Write a query to get all payments that were made on day 5 or 6 (whatever month or year).


   /* FIRST SOLUTION */ 
SELECT * FROM `payments`
WHERE DAY(paymentDate) = 5
OR DAY(paymentDate) = 6;

   /* SECOND SOLUTION */ 
SELECT * FROM `payments`
WHERE (paymentDate LIKE "____%-%-05" OR paymentDate LIKE "____%-%-06");




-- 3- from “customers” table. Write a query to get the fifth-highest credit limit of the customers who (live in the USA and their phone number contains 5555).

SELECT * FROM `customers`
WHERE country = "USA"
OR phone LIKE "5555%"
ORDER BY creditLimit DESC
LIMIT 5;





