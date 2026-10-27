SHOW DATABASES;
CREATE DATABASE Bike_Sales;
use Bike_Sales;
drop database bike_sales;
SELECT * FROM customers;
DESC Customers;
SELECT database();

-- WHERE Clause
-- Filter all the female customer
SELECT 
		 Firstname,
         Lastname,
         Gender
FROM customers
WHERE Gender = "F"
LIMIT 10;

-- Fliter all the married female
Select 
    Prefix,
    Firstname,
    Lastname,
    Gender,
    MaritalStatus
From customers
WHERE Gender = "F" AND MaritalStatus = "M"
LIMIT 10;
-- TOtal children 2 or more than 2
Select 
     Firstname,
     Lastname,
     TotalChildren
From customers
where totalchildren >= 2
limit 10;

-- total children is equal to 3 
Select 
     Firstname,
     Lastname,
     TotalChildren
From customers
where totalchildren = 3
limit 10;


-- total children != 4
Select 
     Firstname,
     Lastname,
     TotalChildren
From customers
where totalchildren != 4
limit 10;


-- WHERE Clause
-- Filter all the female customer
SELECT 
		 Firstname,
         Lastname,
         Gender
FROM customers
WHERE Gender = "F"
LIMIT 10;

-- Fliter all the married female
Select 
    Prefix,
    Firstname,
    Lastname,
    Gender,
    MaritalStatus
From customers
WHERE Gender = "F" AND MaritalStatus = "M"
LIMIT 10;
-- TOtal children 2 or more than 2
Select 
     Firstname,
     Lastname,
     TotalChildren
From customers
where totalchildren >= 2
limit 10;

-- total children is equal to 3 
Select 
     Firstname,
     Lastname,
     TotalChildren
From customers
where totalchildren = 3
limit 10;


-- total children != 4
Select 
     Firstname,
     Lastname,
     TotalChildren
From customers
where totalchildren != 4
limit 10;
    
    
-- Applying filter on Education Level and Occupation    
SELECT
    Firstname,
	Lastname,
    AnnualIncome,
    EducationLevel,
    Occupation
FROM customers
WHERE EducationLevel = "bachelors" AND Occupation = "Professional";

-- if the string for selecting tha data. ( we can use LIKE only in srting patterns)
SELECT
    Firstname,
	Lastname,
    AnnualIncome,
    EducationLevel,
    Occupation
FROM customers
WHERE EducationLevel LIKE "bachelors" AND Occupation LIKE "Professional";


-- marital status M and total chidlren 0
SELECT
    Firstname,
	Lastname,
    MaritalStatus,
    Totalchildren
FROM customers
WHERE MaritalStatus = "M" AND Totalchildren = 0;


-- who are not home owner with NOT
SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE NOT HomeOwner LIKE "Y";

-- who are not home owner without NOT
SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE HomeOwner LIKE "N";

-- who are not home owner with <>
SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE HomeOwner <> "Y";

SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE HomeOwner = "N";

-- find the firstname of customer who have starts name with "H"
SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE Firstname LIKE "H%";

-- find the firstname of customer who have ends name with "S"
SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE Lastname LIKE "%S";

-- an in their name
SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE Firstname LIKE "%an%";

-- last name with A in middle , then one character and wnds with G 
SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE lastname LIKE "%a_g";

-- firstname name pattern any letter then 'a' then any two letter the ends with 'e'
SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE Firstname LIKE "_a__e";

SELECT
    Firstname,
	Lastname,
    HomeOwner
FROM customers
WHERE Firstname LIKE "%a__e";


-- filter all customers having occupation is Professional, Management, clerical;

SELECT 
     Firstname,
     Lastname,
     AnnualIncome,
     Occupation
FROM customers
WHERE Occupation = "Professional" OR 
Occupation = "Management" OR 
Occupation = "Clerical"
LIMIT 20;

-- With IN logic
SELECT 
     Firstname,
     Lastname,
     AnnualIncome,
     Occupation
FROM customers
WHERE Occupation IN ( "Professional","Management", "Clerical")
LIMIT 20;



-- filter all customers having occupation is Professional, Management, clerical and educationlevel bachelors and graduate degree;
SELECT 
     Firstname,
     Lastname,
     AnnualIncome,
     Occupation,
     EducationLevel
FROM customers
WHERE (Occupation =  "Professional"
OR Occupation = "Management"
OR Occupation = "Clerical")
AND 
(EducationLevel = "bachelors"
OR EducationLevel = "Graduate Degree");

-- With IN logic
SELECT 
     Firstname,
     Lastname,
     AnnualIncome,
     Occupation,
     EducationLevel
FROM customers
WHERE Occupation IN ( "Professional", "Management", "Clerical")
AND 
 EducationLevel IN ("bachelors" ,"Graduate Degree");
 
-- Not IN 
 SELECT 
     Firstname,
     Lastname,
     AnnualIncome,
     Occupation
FROM customers
WHERE Occupation NOT IN ( "Professional","Management", "Clerical")
LIMIT 20;

-- without Between
 SELECT 
     Firstname,
     Lastname,
     AnnualIncome,
     Totalchildren
FROM customers
WHERE Totalchildren >=1 AND Totalchildren <= 4;

-- With BETWEEN
 SELECT 
     Firstname,
     Lastname,
     AnnualIncome,
     Totalchildren
FROM customers
WHERE Totalchildren between 1 AND 4
LIMIT 10;

-- ORDER BY -- Sort the result according to the selected column either in Descending or Ascending[Default]
SELECT * FROM products;

-- By Default Decimal [ Double] , Numeric value [Integer], String [TEXT]....

-- ORDER BY [Products]

SELECT ProductName,
       ModelName,
       ProductColor,
       ProductCost
FROM products
ORDER BY ProductCost
LIMIT 20;

-- WITH DSCE
SELECT ProductName,
       ModelName,
       ProductColor,
       ProductCost
FROM products
ORDER BY ProductCost DESC
LIMIT 20;

-- WITH ASC
SELECT ProductName,
       ModelName,
       ProductColor,
       ProductCost
FROM products
ORDER BY ProductCost ASC
LIMIT 20;

-- ORDER by with index
SELECT ProductName,
       ModelName,
       ProductColor,
       ProductCost
FROM products
ORDER BY 4 DESC
LIMIT 10;


SELECT ProductName,
       ModelName,
       ProductColor,
       ProductCost
FROM products
ORDER BY 4 DESC , 1
LIMIT 10;

-- top 10 products based on product price
SELECT ProductName,
       ModelName,
       ProductCost,
       ProductPrice
FROM products
ORDER BY 4 DESC
LIMIT 10;

-- skip the 5 top values offset 5
SELECT ProductName,
       ModelName,
       ProductCost,
       ProductPrice
FROM products
ORDER BY 4 DESC
LIMIT 5 OFFSET 5;

-- skip the first 5 values provide 10 values by offset
SELECT ProductName,
       ModelName,
       ProductCost,
       ProductPrice
FROM products
ORDER BY 4 DESC
LIMIT 10 OFFSET 5;

SELECT ProductName,
       ModelName,
       ProductCost,
       ProductPrice
FROM products
ORDER BY 4 DESC
LIMIT 20;

-- offset skip always first values...
SELECT ProductName,
       ModelName,
       ProductCost,
       ProductPrice
FROM products
ORDER BY 4 DESC
LIMIT 20 OFFSET 5;


-- Alises "AS" rename the column or a table name
SELECT 
       ProductKey AS ID,
       ProductName,
       ModelName,
       ProductCost,
       ProductPrice
FROM products
ORDER BY 4 DESC
LIMIT 20;

-- CONCAT 
SELECT 
     CustomerKey AS CustomerID,
     CONCAT(Prefix, " ", FirstName, " ", LastName) AS CustomerName
FROM Customers
LIMIT 10;

use bike_sales;

CREATE TABLE CodingNinja(
       user_id INT primary key NOT NULL,
       StudentName varchar(50) NOT NULL,
       Gender char(1),
       Email varchar(100) UNIQUE,
       Age INT,
       IsActive boolean
       );
       
INSERT INTO CodingNinja(user_id, StudentName, Age, Gender, Email) 
VALUES (1, "Punit Kumar", 25, "M", "Punit@gmail.com");

DROP TABLE CodingNinja;

CREATE TABLE Customerdetails AS 
Select * from customers;

SELECT * FROM Customerdetails;

SELECT 
     FirstName,
     LastName,
     EmailAddress,
     Totalchildren
FROM Customerdetails
WHERE LastName = "Torres"
LIMIT 25;

UPDATE Customerdetails
SET EmailAddress = "Torres@learnsectore.com"
WHERE LastName = "Torres";

USE bike_sales;

DELETE FROM customerdetails
WHERE LastName = "Torres";

DELETE FROM customerdetails;

SELECT * FROM customerdetails;


DROP TABLE customerdetails;


-- ALIASES
CREATE TABLE Customerdetails AS 
Select * from customers;

-- TRUNCATE cammand
-- TRUNCATE doesn't use the where clause
-- TRUNCATE faster than delete command
-- TRUNCATE doesn't have a role back option
TRUNCATE TABLE customerdetails;

DESC customerdetails;

DROP TABLE customerdetails;

SHOW TABLES;

SELECT DISTINCT AnnualIncome FROM customers;

-- IS NULL / IS NOT NULL VS EMPTY = ""

SELECT 
    CustomerKey,
    FirstName,
    LastName,
    AnnualIncome
FROM customers
WHERE AnnualIncome = "";
    
SELECT 
    CustomerKey,
    FirstName,
    LastName,
    AnnualIncome
FROM customers
WHERE AnnualIncome IS NULL;

UPDATE Customers
SET AnnualIncome = NULL
WHERE AnnualIncome = "";

SELECT 
    CustomerKey,
    FirstName,
    LastName,
    AnnualIncome
FROM customers
WHERE AnnualIncome IS NOT NULL
LIMIT 10;

SELECT distinct Prefix FROM Customers;


-- FIXING the prefix with "" -> NULL
SELECT 
    CustomerKey,
    Prefix,
    FirstName,
    LastName,
    AnnualIncome
FROM customers
WHERE Prefix = "";

UPDATE Customers
SET Prefix = NULL
WHERE Prefix = "";

SELECT 
    CustomerKey,
    Prefix,
    FirstName,
    LastName,
    AnnualIncome
FROM customers
WHERE Prefix IS NULL;


-- ALTER Command
-- ADDING A NEW COLUMN NAME Country IN CUSTOMER TABLE

ALTER TABLE customers
ADD COLUMN Country varchar(50);

-- Dropping a column
ALTER TABLE customers
DROP COLUMN Country;

-- Adding a column in the beginning 
ALTER TABLE customers
ADD COLUMN Country varchar(50) FIRST;

-- Adding a column at the specific location 
ALTER TABLE customers
ADD COLUMN Country varchar(50)
AFTER Birthdate;

-- Removing the MyUnknownColumn which is doesn't have any data
ALTER TABLE customers
DROP COLUMN MyUnknownColumn;

-- Modify the Email column datatype from Text to varchar(100)
ALTER TABLE customers
MODIFY COLUMN EmailAddress varchar(100);

ALTER TABLE customers
MODIFY COLUMN Phone_Number text;

-- RENAME THE COLUMN Birthdate to DateOfBirth
ALTER TABLE Customers
RENAME COLUMN Birthdate to DateOfBirth;

-- String operations
-- Length
SELECT LENGTH('Coding Ninja');

SELECT 
     CustomerKey,
     FirstName,
     length(FirstName) AS FirstName_Length
FROM Customers;

-- Trim
SELECT trim(BOTH 'x' FROM 'xxxxxCodingNinjaxxxxx') AS trimmed_string;


SELECT trim('_' FROM trim('x' from 'xxxxxCodingNinja______________')) AS trimmed_string;

SELECT ltrim('                CodingNinja') AS left_string;

SELECT Rtrim('                CodingNinja              ') AS right_string;


SELECT trim(BOTH 'x' FROM 'xxxxxCodingNinja---------') AS trimmed_string;

-- CONCAT
SELECT 
    CustomerKey,
    FirstName,
    LastName,
    CONCAT(FirstName," ",LastName) AS FullName
FROM Customers
LIMIT 20;

-- CONCAT_WS it is similar to textjoin()
SELECT 
    CustomerKey,
    Prefix,
    FirstName,
    LastName,
    CONCAT_WS(" - ",Prefix,FirstName,LastName) AS FullName
FROM Customers
LIMIT 20;

ALTER TABLE customers
Add column FullName varchar(50)
After LastName;

UPDATE Customers
SET FullName  = CONCAT(FirstName," ",LastName);

SELECT FullName FROM customers
Limit 10;

ALter Table customers
DROP COLUMN FirstName, DROP COLUMN LastName;

SELECT 
     CustomerKey,
     Prefix,
     FullName
FROM Customers
LIMIT 15;

-- SUBSTRING_INDEX to fetch FirstName and LastName from fullName
ALTER TABLE customers
ADD column FirstName varchar(50)
AFTER prefix;
     
ALTER TABLE customers
ADD column LastName varchar(50)
AFTER FirstName;

SELECT FirstName , LastName FROM customers LIMIT 10;

UPDATE Customers
SET FirstName = SUBSTRING_INDEX(FullName," ",1);

UPDATE Customers
SET LastName = SUBSTRING_INDEX(FullName," ",-1);

-- UPPER() / LOWER()
SELECT DISTINCT UPPER(Occupation) FROM customers;

SELECT 
      LOWER(CONCAT(FirstName," ", LastName)) AS FullName
FROM customers
LIMIT 20;

SELECT 
      CONCAT(LOWER(FirstName)," ", LOWER(LastName)) AS FullName
FROM customers
LIMIT 20;

-- LEFT() / RIGHT()
SELECT 
    CustomerKey,
    FirstName,
    LastName,
    EmailAddress,
    LEFT(EmailAddress, 7)  AS Trimmed_address
FROM customers
Limit 10;

SELECT 
    CustomerKey,
    FirstName,
    LastName,
    EmailAddress,
    RIGHT(EmailAddress, 4)  AS Trimmed_address
FROM customers
Limit 10;

-- LPAD() / RPAD (Str, lenght, padded_str)
SELECT
    LPAD(Phone_number, 10, '0') AS Formatted_number
FROM customers
LIMIT 15;

SELECT
    RPAD(Phone_number, 10, '0') AS Formatted_number
FROM customers
LIMIT 15;


SELECT
    LPAD(Phone_number, 14, '(+1)0') AS Formatted_number
FROM customers
LIMIT 15;

SELECT
    CONCAT('(+1)' , RPAD(Phone_number, 10, '0')) AS Formatted_number
FROM customers
LIMIT 15;

USE bike_sales;

-- REVERSE()
SELECT 
     FirstName,
     REVERSE(FirstName)
FROM Customers
LIMIT 10;

SELECT 
     FirstName,
     REVERSE(FirstName),
     CONCAT(FirstName, REVERSE(FirstName)) AS palindrome_string
FROM Customers
LIMIT 5;

-- Updating the AnnualIncome, Replacing $ with "", --> Alter command to modify the data types
UPDATE customers
SET AnnualIncome = REPLACE(AnnualIncome, '$', '');  -- $170,000 --> 170,000

UPDATE customers
SET AnnualIncome = REPLACE(AnnualIncome, ',', '');   -- 170,000 --> 170000

UPDATE customers
SET AnnualIncome = REPLACE(REPLACE(AnnualIncome, '$', ''),',', '');  -- $170,000  -->  170000

-- Now its the best time to change the data types of Annual Income
ALTER TABLE customers
MODIFY COLUMN AnnualIncome INT;

SELECT 
     AnnualIncome,
     CAST(AnnualIncome AS DECIMAL(10, 2)) AS CastedAnnualIncome 
FROM Customers
LIMIT 10;

-- SUBSTRING

SELECT SUBSTRING('Coding Ninja',5,5);

SELECT SUBSTR('Coding Ninja', 1,6);

SELECT 
    EmailAddress,
     SUBSTR(EmailAddress, 4)
FROM customers
Limit 10;

SELECT 
    EmailAddress,
     SUBSTR(EmailAddress, 4,100)
FROM customers
Limit 10;


SELECT 
    EmailAddress,
     SUBSTR(EmailAddress, -4)
FROM customers
Limit 10;

SELECT 
    EmailAddress,
     SUBSTR(EmailAddress, -10, 10)
FROM customers
Limit 10;

-- INSTRING
SELECT 
    EmailAddress,
     INSTR(EmailAddress, '@') AS `@_position`
FROM customers
Limit 10;

SELECT 
     EmailAddress,
     LEFT(EmailAddress, INSTR(EmailAddress, '@')-1) AS UserName,
     RIGHT(EmailAddress, INSTR(EmailAddress, '@')) AS Domain
FROM customers
LIMIT 10;

SELECT 
     EmailAddress,
     LEFT(EmailAddress, INSTR(EmailAddress, '@')-1) AS UserName,
     SUBSTR(EmailAddress, INSTR(EmailAddress, '@')+1) AS Domain,
     RIGHT(EmailAddress, LENGTH(EmailAddress)-INSTR(EmailAddress, '@')) AS New_DomainName,
     INSTR(EmailAddress, '@') AS `@_position`,
     LENGTH(EmailAddress) AS Text_length
FROM customers
LIMIT 10;

USE Bike_sales;


-- COUNT()
-- Count the number of unique products sell on 2015/16/17
SELECT 
     Count(DISTINCT ProductKey)
FROM sales2015;

SELECT 
     Count(DISTINCT ProductKey)
FROM sales2016;

SELECT 
     Count(DISTINCT ProductKey)
FROM sales2017;

-- count the unique products having product cost > 1000
SELECT 
     Count(ProductKey)
FROM Products
WHERE ProductCost > 1000;


SELECT 
     Count(DISTINCT ProductSubcategoryKey)
FROM Products;

-- Calculate the sum of product price , sum of product cost , total gross profif?
SELECT 
	 SUM(ProductPrice) AS TotalSales,
     SUM(ProductCost) AS TotalCost,
     SUM(ProductPrice - ProductCost) AS GrossProfit
FROM Products;

SELECT 
	 CAST(SUM(ProductPrice) AS DECIMAL(10,2)) AS TotalSales,
     ROUND(SUM(ProductCost),2) AS TotalCost,
     ROUND(SUM(ProductPrice - ProductCost),2) AS GrossProfit
FROM Products;

-- Find the totalSales/Cost/profit for Each SubCategoryKey?
SELECT 
     ProductSubCategoryKey,
	 CAST(SUM(ProductPrice) AS DECIMAL(10,2)) AS TotalSales,
     ROUND(SUM(ProductCost),2) AS TotalCost,
     ROUND(SUM(ProductPrice - ProductCost),2) AS GrossProfit
FROM Products
GROUP BY ProductSubCategoryKey;

SELECT 
     ProductSubCategoryKey,
	 CAST(SUM(ProductPrice) AS DECIMAL(10,2)) AS TotalSales,
     ROUND(SUM(ProductCost),2) AS TotalCost,
     ROUND(SUM(ProductPrice - ProductCost),2) AS GrossProfit
FROM Products
GROUP BY ProductSubCategoryKey
ORDER BY GrossProfit DESC;

-- GROUP_CONCAT()
SELECT 
	GROUP_CONCAT(distinct EducationLevel)
FROM Customers;

SELECT 
	GROUP_CONCAT(distinct Occupation separator ' - ')
FROM Customers;

SELECT 
	GROUP_CONCAT(distinct SubCategoryName ORDER by SubCategoryName separator ' # ') AS SubcategoryList
FROM productsubcategories;

SELECT 
	GROUP_CONCAT(distinct CategoryName ORDER by CategoryName separator ' -> ') AS CategoryList
FROM productcategories;

-- Based on Each Education Level find the total customers
SELECT 
     EducationLevel,
     COUNT(Customerkey) AS CustomerCount
FROM Customers
GROUP BY EducationLevel;


-- Based on Each occupation  find the total customers
SELECT 
     Occupation,
     COUNT(Customerkey) AS CustomerCount
FROM Customers
GROUP BY Occupation;

-- Based on Each Education Level, Occupation find the total customers
SELECT 
     EducationLevel,
     Occupation, 
     COUNT(Customerkey) AS CustomerCount
FROM Customers
GROUP BY 1, 2;

-- HAVING CLAUSE
SELECT 
     Occupation,
     COUNT(Customerkey) AS CustomerCount
FROM Customers
GROUP BY Occupation
HAVING CustomerCount > 300;

SELECT 
     Occupation,
     COUNT(Customerkey) AS CustomerCount
FROM Customers
WHERE Occupation NOT LIKE "Clerical"
GROUP BY Occupation
HAVING CustomerCount > 300;

-- Find the total AnnualIncome based on occupation / Education / gender.
SELECT
	 Occupation,
     SUM(AnnualIncome) AS Total_AnnualIncome
FROM Customers
GROUP BY 1;

SELECT
     EducationLevel,
     SUM(AnnualIncome) AS Total_AnnualIncome
FROM Customers
GROUP BY 1;

SELECT
     Gender,
     SUM(AnnualIncome) AS Total_AnnualIncome
FROM Customers
GROUP BY 1;


-- Find the total AnnualIncome based on occupation  - Education / WHERE gender = 'M'
SELECT
	 Occupation,
     EducationLevel,
     SUM(AnnualIncome) AS Total_AnnualIncome
FROM Customers
WHERE Gender LIKE 'M'
GROUP BY 1,2;

-- Find the AvgCost, AvgPrice , ABS[(AvgCost - AvgPrice)] having AvgProfit > 100  based on each instance of Productsubcategorykey
SELECT 
     ProductSubCategoryKey,
     AVG(ProductCost) AS AvgCost,
     AVG(ProductPrice) AS AvgPrice,
     AVG(ProductCost - ProductPrice) AS AvgProfit
FROM Products
group by 1;

-- Cleaned Values
SELECT 
     ProductSubCategoryKey,
     ROUND(AVG(ProductCost),0) AS AvgCost,
     ROUND(AVG(ProductPrice),0) AS AvgPrice,
     ROUND(ABS(AVG(ProductCost - ProductPrice)),0) AS AvgProfit
FROM Products
group by 1;

-- HAVING CLAUSE Condition in this question
SELECT 
     ProductSubCategoryKey,
     ROUND(AVG(ProductCost),0) AS AvgCost,
     ROUND(AVG(ProductPrice),0) AS AvgPrice,
     ROUND(ABS(AVG(ProductCost - ProductPrice)),0) AS AvgProfit
FROM Products
group by 1
HAVING AvgProfit > 100;

USE Bike_sales;

-- TOPIC CONSTRAINTS 
DROP TABLE Customer;
CREATE TABLE Customer(
      Customer_id INT NOT NULL,
	  Customer_Name VARCHAR(100) NOT NULL ,
      Age INT 
);
DESC Customer; 

INSERT INTO Customer(Customer_id, Age)
VALUES(123,19);

ALTER TABLE Customer
MODIFY COLUMN Customer_Name VARCHAR(100) DEFAULT 'NA';

SELECT * FROM Customer;

ALTER TABLE Customer
ADD PRIMARY KEY(Customer_id);  -- PRIMARY KEY IS CONSTRAINTS 

CREATE TABLE Orders(
     Order_id INT PRIMARY KEY,
     Customer_id INT,
     FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id)
     ON DELETE CASCADE  -- This is for only Child table.
     ON UPDATE CASCADE  -- This is for only Child table. 
);

DESC Orders;

ALTER TABLE Customer
ADD COLUMN EmailAddress VARCHAR(50) AFTER Customer_name,
ADD COLUMN Phone_number BIGINT;

ALTER TABLE Customer
ADD CONSTRAINT UNIQUE(EmailAddress);

ALTER TABLE Customer
DROP CONSTRAINT EmailAddress;

ALTER TABLE Customer
ADD CONSTRAINT UNIQUE(Phone_number);

ALTER TABLE Orders
DROP COLUMN Customer_id;

-- Error Code: 1828. Cannot drop column 'Customer_id': needed in a foreign key constraint 'orders_ibfk_1'

ALTER TABLE Orders
DROP CONSTRAINT orders_ibfk_1;

ALTER TABLE Orders
ADD COLUMN Customer_id INT;

ALTER TABLE Orders
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id);

DESC Orders;

ALTER TABLE Customer
DROP COLUMN Customer_id;

ALTER TABLE Orders
DROP constraint fk_customer_id;

alter table Orders
DROP column Customer_id;

DESC Customer;

USE Bike_sales;

ALTER TABLE Customer
ADD COLUMN Customer_id INT
FIRST;


UPDATE Customer
SET Customer_id = 1
WHERE Customer_id IS NULL;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM customer;

ALTER TABLE Customer
MODIFY COLUMN Customer_id INT NOT NULL;

ALTER TABLE Customer
ADD primary key(Customer_id);

-- CHECK CONSTRAINTS

DESC Products;
DESC returns;


ALTER TABLE Products
ADD CONSTRAINT check_positive_cost
CHECK (ProductCost > 0);

INSERT INTO Products(ProductCost)
VALUES(-10);  --  Error Code: 3819. Check constraint 'check_positive_cost' is violated.

-- Adding constraint on ReturnQuantity > 0? 

ALTER TABLE Returns
ADD CONSTRAINT check_positive_return
CHECK ( ReturnQuantity > 0 );

INSERT INTO Returns(ReturnQuantity)
VALUES (-2);    -- Error Code: 3819. Check constraint 'check_positive_return' is violated.

-- JOINS [INNER JOIN / JOIN]
SELECT 
     ProductName,
     SUM(ReturnQuantity) AS TotalReturns
FROM Products
INNER JOIN Returns   -- Find the common values in the both tables 
ON Products.ProductKey = Returns.ProductKey
GROUP BY 1
ORDER By 2 DESC
LIMIT 10;

SELECT 
     p.ProductName,
     SUM(r.ReturnQuantity) AS TotalReturns
FROM Products AS p
INNER JOIN Returns AS r
ON p.ProductKey = r.ProductKey
GROUP BY 1
ORDER By 2 DESC
LIMIT 10;

SELECT 
     p.Productkey,
     p.ProductName,
     SUM(r.ReturnQuantity) AS TotalReturns
FROM Products AS p
INNER JOIN Returns AS r
ON p.ProductKey = r.ProductKey
GROUP BY 1,2
ORDER By 3 DESC
LIMIT 10;

-- Find the products who never being returned? 
SELECT 
     p.Productkey,
     p.ProductName,
     SUM(r.ReturnQuantity) AS TotalReturns
FROM Products AS p
LEFT JOIN Returns AS r
ON p.ProductKey = r.ProductKey
GROUP BY 1,2
ORDER By 3 DESC;

USE Bike_sales;
SELECT * FROM territories;

SELECT DISTINCT(TerritoryKey)
FROM returns;

-- FULL JOIN
SELECT 
     t.*,
     r.*
FROM territories t
LEFT JOIN returns r 
ON t.SalesTerritoryKey = r.TerritoryKey;
-- UNION
SELECT 
     t.*,
     r.*
FROM territories t
RIGHT JOIN returns r 
ON t.SalesTerritoryKey = r.TerritoryKey;

-- FINAL TABLE
SELECT 
     t.*,
     r.*
FROM territories t
LEFT JOIN returns r 
ON t.SalesTerritoryKey = r.TerritoryKey
UNION
SELECT 
     t.*,
     r.*
FROM territories t
RIGHT JOIN returns r 
ON t.SalesTerritoryKey = r.TerritoryKey;

-- UNION ALL
SELECT 
     t.*,
     r.*
FROM territories t
LEFT JOIN returns r 
ON t.SalesTerritoryKey = r.TerritoryKey
UNION ALL
SELECT 
     t.*,
     r.*
FROM territories t
RIGHT JOIN returns r 
ON t.SalesTerritoryKey = r.TerritoryKey;

-- CHALLENGES ON JOIN

SELECT * FROM customers;
SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName,
    ProductName,
    OrderQuantity
FROM (
 SELECT * FROM sales2015
 UNION ALL
 SELECT * FROM sales2016    -- Sub Queries..
 UNION ALL 
 SELECT * FROM sales2017
 ) AS s
 JOIN Customers c
 ON c.CustomerKey = s.CustomerKey
 JOIN Products p
 ON p.ProductKey = s.ProductKey;
 
 
 
SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName,
    ProductName,
    SUM(s.OrderQuantity) AS TotalQTY
FROM (
 SELECT * FROM sales2015
 UNION ALL
 SELECT * FROM sales2016
 UNION ALL 
 SELECT * FROM sales2017
 ) AS s
 JOIN Customers c
 ON c.CustomerKey = s.CustomerKey
 JOIN Products p
 ON p.ProductKey = s.ProductKey
 GROUP BY 1,2
 ORDER BY 3 DESC;
 
 
 -- WHICH product is sold all the three years?
 SELECT 
      DISTINCT ProductName
FROM Products p 
WHERE p.ProductKey IN (SELECT ProductKey FROM sales2015)
AND p.ProductKey IN (SELECT ProductKey FROM sales2016)
AND p.ProductKey IN (SELECT ProductKey FROM sales2017);

-- CROSS JOIN
SELECT 
    pc.CategoryName,
    ps.subCategoryName
FROM productcategories pc
CROSS JOIN productsubcategories ps;

SELECT COUNT(*) FROM productcategories;  -- 4
SELECT COUNT(*) FROM productsubcategories;  -- 37 
-- 4 * 37 = 148

-- SELF JOIN
SELECT 
     c1.CustomerKey AS customer1_ID,
     CONCAT(c1.FirstName, ' ', c1.LastName) AS Customer1_Name,
     c2.CustomerKey AS customer2_ID,
     CONCAT(c2.FirstName, ' ', c2.LastName) AS Customer2_Name,
     c1.LastName
FROM Customers c1
JOIN Customers c2
ON c1.LastName = c2.LastName
AND c1.CustomerKey < c2.CustomerKey;


SELECT
	p.ProductName,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalSales,
    SUM(r.ReturnQuantity) TotalReturns,
    SUM(s.OrderQuantity) AS QuantitySold
FROM Products p
JOIN sales2016 s 
ON p.ProductKey = s.ProductKey
JOIN returns r
ON p.ProductKey = r.ProductKey
GROUP BY 1;

SELECT * FROM returns;

-- Provide the detail of categoryName with total returns
SELECT 
    CategoryName,
    SUM(ReturnQuantity) AS totalReturns
FROM ProductCategories pc
JOIN ProductSubcategories ps
ON pc.ProductCategoryKey = ps.ProductCategorykey
JOIN Products p
ON p.ProductSubcategoryKey = ps.ProductSubCategoryKey
JOIN Returns r
ON r.ProductKey = p.ProductKey
GROUP BY 1;

-- IFNULL() VS COALESCE() --> They both are used to handle the null values. 

DESC customers;

SELECT 
     distinct AnnualIncome 
FROM Customers;

SELECT 
     CustomerKey,
     FullName,
     Occupation,
     IFNULL(AnnualIncome, "Unknown") AS AnnualIncome
FROM Customers;

SELECT 
     CustomerKey,
     FullName,
     Occupation,
     COALESCE(AnnualIncome, 0) AS AnnualIncome
FROM Customers;

SELECT 
    COUNT(*) 
FROM Customers
WHERE AnnualIncome IS NULL;

CREATE TABLE temp(
       name varchar(20),
       age int
       );
       
INSERT INTO temp(name,age)
VALUES('abcd', NULL),
(NULL, 99),
('bhalu',22),
(NULL,NULL);

SELECT * FROM temp;

SELECT 
    COALESCE(name, age,0) AS name,
    COALESCE(name, age, "Unknown") AS age
FROM temp;

-- calculate the returns by categoryName , SubCategoryName?
SELECT 
	pc.CategoryName,
    ps.SubCategoryName,
    SUM(r.ReturnQuantity) AS TotalReturns
FROM productcategories pc
JOIN productsubcategories ps
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Products p
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN Returns r
ON r.ProductKey = p.ProductKey
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;

-- find the territories with high returns(>200)?
SELECT 
    t.SalesTerritoryKey,
    t.Country,
	t.Region,
    SUM(r.ReturnQuantity) AS TotalTerritories
FROM territories t
JOIN Returns r 
ON r.TerritoryKey = t.SalesTerritoryKey
GROUP BY 1,2,3
HAVING TotalTerritories > 200
ORDER BY 4 DESC;

-- Find the categoryName with totalexpenses, totalsales and totalprofit?
SELECT
    pc.CategoryName,
    ROUND(SUM(p.ProductCost * s.OrderQuantity),0) AS TotalExpenses,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalSales,
    ROUND((SUM(p.ProductPrice * s.OrderQuantity) - SUM(p.ProductCost * s.OrderQuantity)),0) AS TotalProfit
FROM (
     SELECT * FROM sales2015
     UNION ALL
     SELECT * FROM sales2016
     UNION ALL
     SELECT * FROM sales2017
) AS s
JOIN Products p
ON s.ProductKey = p.ProductKey
JOIN productsubcategories ps
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN productcategories pc
ON pc.ProductCategoryKey = ps.ProductCategoryKey
GROUP BY 1;

-- Find the categoryName with totalexpenses, totalsales and totalprofit and totalReturns?
SELECT
    pc.CategoryName,
    ROUND(SUM(p.ProductCost * s.OrderQuantity),0) AS TotalExpenses,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalSales,
    ROUND((SUM(p.ProductPrice * s.OrderQuantity) - SUM(p.ProductCost * s.OrderQuantity)),0) AS TotalProfit,
    SUM(r.ReturnQuantity) AS TotalReturns
FROM (
     SELECT * FROM sales2015
     UNION ALL
     SELECT * FROM sales2016
     UNION ALL
     SELECT * FROM sales2017
) AS s
JOIN Products p
ON s.ProductKey = p.ProductKey
JOIN productsubcategories ps
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN productcategories pc
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Returns r
ON r.ProductKey = p.ProductKey
GROUP BY 1;

-- Top five Customers by sales Quantity
SELECT 
    c.CustomerKey,
    c.FullName,
    SUM(s.OrderQuantity) AS TotalSalesQty
FROM (
     SELECT * FROM sales2015
     UNION ALL
     SELECT * FROM sales2016
     UNION ALL
     SELECT * FROM sales2017
) AS s
JOIN Customers c
ON c.CustomerKey = s.CustomerKey
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 5;

-- ONE BY ONE
SELECT 
    c.CustomerKey,
    c.FullName,
    SUM(s15.OrderQuantity) AS TotalSalesQty
FROM sales2015 s15
JOIN Customers c 
ON s15.CustomerKey = c.CustomerKey
GROUP BY 1,2
UNION ALL
SELECT 
    c.CustomerKey,
    c.FullName,
    SUM(s16.OrderQuantity) AS TotalSalesQty
FROM sales2016 s16
JOIN Customers c 
ON s16.CustomerKey = c.CustomerKey
GROUP BY 1,2
UNION ALL
SELECT 
    c.CustomerKey,
    c.FullName,
    SUM(s17.OrderQuantity) AS TotalSalesQty
FROM sales2017 s17
JOIN Customers c 
ON s17.CustomerKey = c.CustomerKey
GROUP BY 1,2
ORDER BY TotalSalesQty DESC
LIMIT 5;

-- CASE Statements

USE bike_sales;
DESC Customers;

SELECT 
	DISTINCT AnnualIncome
FROM Customers;

-- Creating a new column name income_category -> <50K [ LOW INCOME ] , BETWEEN 50k to 100K [ Moderate Income ] Else High Income?
SELECT 
    CustomerKey,
    AnnualIncome,
    CASE
       WHEN AnnualIncome < 50000 THEN 'Low Income'
       WHEN AnnualIncome BETWEEN 50000 AND 100000 THEN 'Moderate Income'
       ELSE 'High Income'
	END AS IncomeCategory
FROM Customers;
    
-- Handle null values
SELECT 
    CustomerKey,
    AnnualIncome,
    CASE
       WHEN AnnualIncome IS NULL THEN 'Not Available'
       WHEN AnnualIncome < 50000 THEN 'Low Income'
       WHEN AnnualIncome BETWEEN 50000 AND 100000 THEN 'Moderate Income'
       ELSE 'High Income'
	END AS IncomeCategory
FROM Customers;
    
DESC Customers;
SELECT DISTINCT EducationLevel FROM Customers;
    
-- Bachelors
-- Partial College
-- High School
-- Partial High School
-- Graduate Degree

SELECT 
     CustomerKey,
     EducationLevel,
     CASE
     WHEN EducationLevel IN ("High School", "Partial High School") THEN "High School"
     WHEN EducationLevel IN ("Bachelors", "Partial College") THEN "Bachelors"
     ELSE 'Graduate Degree'
     END AS NewEducationLevel
FROM Customers;
   
-- UPDATE THE Incomecategory in customer table
ALTER TABLE Customers
ADD COLUMN IncomeCategory VARCHAR(100)
AFTER AnnualIncome;

DESC Customers;

UPDATE Customers
SET IncomeCategory = CASE
       WHEN AnnualIncome IS NULL THEN 'Not Available'
       WHEN AnnualIncome < 50000 THEN 'Low Income'
       WHEN AnnualIncome BETWEEN 50000 AND 100000 THEN 'Moderate Income'
       ELSE 'High Income'
END;
SELECT 
     CustomerKey,
     AnnualIncome,
     IncomeCategory
FROM Customers;

    
SET SQL_SAFE_UPDATES = 0;

-- Find the territorykey wise orderquantity
-- 1. orderqty > 2 --> high sales
-- 2. orderqty [1,2] Inclusive -> medium sales
-- 3. orderqty <1 --> Low Sales
SELECT 
     TerritoryKey,
     SUM(CASE WHEN OrderQuantity > 2 THEN OrderQuantity ELSE 0 END) AS HighSales,
     SUM(CASE WHEN OrderQuantity BETWEEN 1 AND 2 THEN OrderQuantity ELSE 0 END) AS MediumSales,
     SUM(CASE WHEN OrderQuantity < 1 THEN OrderQuantity ELSE 0 END) AS LowSales
FROM sales2017
GROUP BY 1;

-- Find the territorykey wise orderquantity
-- 1. orderqty > 3 --> high sales
-- 2. orderqty [2,3] Inclusive -> medium sales
-- 3. orderqty <2 --> Low Sales
SELECT 
     TerritoryKey,
     SUM(CASE WHEN OrderQuantity > 3 THEN OrderQuantity ELSE 0 END) AS HighSales,
     SUM(CASE WHEN OrderQuantity BETWEEN 2 AND 3 THEN OrderQuantity ELSE 0 END) AS MediumSales,
     SUM(CASE WHEN OrderQuantity < 2 THEN OrderQuantity ELSE 0 END) AS LowSales
FROM sales2017
GROUP BY 1;

-- clasify the customer based on the quantity on the how frequently they return product?
SELECT 
     c.CustomerKey,
     c.FullName,
     SUM(COALESCE(r.ReturnQuantity,0)) AS TotalReturns,
     CASE
       WHEN SUM(COALESCE(r.ReturnQuantity,0)) > 10 THEN 'Frequent Returner'
       WHEN SUM(COALESCE(r.ReturnQuantity,0)) BETWEEN 1 AND 10 THEN 'Occasional Returner'
       ELSE 'Non Returner'
     END AS ReturnBehavior
FROM Customers c
LEFT JOIN sales2015 s
ON c.Customerkey = s.CustomerKey
LEFT JOIN Returns r 
ON r.ProductKey = s.Productkey
GROUP BY 1,2
ORDER BY 3 DESC;

-- Create a categoryName as a new column and find the total returns based on the region?
SELECT
     t.Region,
     SUM(CASE WHEN CategoryName = "Bikes" THEN ReturnQuantity ELSE 0 END) AS BikeReturns, 
     SUM(CASE WHEN CategoryName = "Components" THEN ReturnQuantity ELSE 0 END) ComponentReturns,
     SUM(CASE WHEN CategoryName = "Clothing" THEN ReturnQuantity ELSE 0 END) AS ClothingReturns,
     SUM(CASE WHEN CategoryName = "Accessories" THEN ReturnQuantity ELSE 0 END) AS AccReturns
FROM productcategories pc
JOIN productsubcategories ps
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Products p
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN Returns r
ON r.ProductKey = p.ProductKey
JOIN territories t
ON r.TerritoryKey = t.SalesTerritoryKey
GROUP BY 1;

SELECT 
     t.Region,
     pc.CategoryName,
     SUM(COALESCE(r.ReturnQuantity,0)) AS TotalReturns,
	 CASE
       WHEN SUM(COALESCE(r.ReturnQuantity,0)) > 50 THEN 'High Returns'
       WHEN SUM(COALESCE(r.ReturnQuantity,0)) > 25 THEN 'Moderate Returns'
       ELSE ' Low Returns'
     END AS ReturnCategory
FROM productcategories pc
JOIN productsubcategories ps
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Products p
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN Returns r
ON r.ProductKey = p.ProductKey
JOIN territories t
ON r.TerritoryKey = t.SalesTerritoryKey
GROUP BY 1,2
ORDER BY 3 DESC;

-- CTE

-- USE OF CTE to make query optimize and easy to understandable

-- Find the categoryName with totalexpenses, totalsales and totalprofit and totalReturns?

WITH CategoryInfo AS ( 
	SELECT
    pc.CategoryName,
    ROUND(SUM(p.ProductCost * s.OrderQuantity),0) AS TotalExpenses,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalSales,
    SUM(r.ReturnQuantity) AS TotalReturns
FROM (
     SELECT * FROM sales2015
) AS s
JOIN Products p
ON s.ProductKey = p.ProductKey
JOIN productsubcategories ps
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN productcategories pc
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Returns r
ON r.ProductKey = p.ProductKey
GROUP BY pc.CategoryName
)
SELECT 
      *,
      (TotalSales - TotalExpenses) AS TotalProfit
FROM CategoryInfo;


-- Find the Products having cost more than the average cost in their subcategory?
SELECT Avg(ProductCost) FROM Products;

WITH AvgCostPerSubcategory AS (
     SELECT 
          productsubcategoryKey,
          ROUND(AVG(ProductCost),0) AS AvgCost
          FROM Products
          GROUP BY 1
)
    SELECT
          p.Productkey,
          p.ProductName,
          p.ProductCost,
          ps.AvgCost
   FROM Products p
   JOIN AvgCostPerSubcategory ps   -- ps product subcategory
   ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
   WHERE p.ProductCost > ps.AvgCost
   ORDER BY p.ProductCost DESC;
   
   -- Calculate the total sales & total returns for each product category?
   WITH CategoryReturns AS (
	  SELECT 
           pc.ProductCategoryKey,
           pc.CategoryName,
           SUM(r.ReturnQuantity) AS TotalReturns
	 FROM Returns r 
     JOIN Products p
     ON r.productKey = p.ProductKey
     JOIN productsubcategories ps
     ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
     JOIN productcategories pc
     ON pc.ProductCategoryKey = ps.ProductCategoryKey
    GROUP BY 1,2
   ),
   CategorySales AS (
	  SELECT 
           pc.ProductCategoryKey,
           pc.CategoryName,
           ROUND(SUM(s.OrderQuantity * p.ProductPrice),0) AS TotalSales
	 FROM sales2017 s
     JOIN Products p
     ON s.productKey = p.ProductKey
     JOIN productsubcategories ps
     ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
     JOIN productcategories pc
     ON pc.ProductCategoryKey = ps.ProductCategoryKey
    GROUP BY 1,2
   )
   SELECT 
	   cs.ProductCategoryKey,
       cr.CategoryName,
       cr.TotalReturns,
       cs.TotalSales
  FROM CategoryReturns cr
  JOIN CategorySales cs
  ON cr.ProductCategoryKey = cs.ProductCategoryKey;
   
   -- Individual Table
   SELECT 
           pc.CategoryName,
           SUM(r.ReturnQuantity) AS TotalReturns
	 FROM Returns r 
     JOIN Products p
     ON r.productKey = p.ProductKey
     JOIN productsubcategories ps
     ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
     JOIN productcategories pc
     ON pc.ProductCategoryKey = ps.ProductCategoryKey
    GROUP BY 1;
    
   -- Individual Table 
    SELECT 
           pc.CategoryName,
           ROUND(SUM(s.OrderQuantity * p.ProductPrice),0) AS TotalSales
	 FROM sales2017 s
     JOIN Products p
     ON s.productKey = p.ProductKey
     JOIN productsubcategories ps
     ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
     JOIN productcategories pc
     ON pc.ProductCategoryKey = ps.ProductCategoryKey
    GROUP BY 1;
    
-- Rephrase the below code to CTE

WITH AppendSales AS (
 SELECT * FROM sales2015
 UNION ALL
 SELECT * FROM sales2016
 UNION ALL 
 SELECT * FROM sales2017
)
SELECT 
    c.CustomerKey,
    CONCAT(FirstName, ' ', LastName) AS FullName,
    SUM(s.OrderQuantity) AS TotalSalesQTY
FROM AppendSales s
 JOIN Customers c
 ON c.CustomerKey = s.CustomerKey
 JOIN Products p 
 ON p.ProductKey = s.ProductKey
 GROUP BY 1,2
 ORDER BY 3 DESC;
 
 SELECT 
    c.CustomerKey,
    CONCAT(FirstName, ' ', LastName) AS FullName,
    SUM(s.OrderQuantity) AS TotalSalesQTY
FROM (
 SELECT * FROM sales2015
 UNION ALL
 SELECT * FROM sales2016
 UNION ALL 
 SELECT * FROM sales2017
 ) AS s
 JOIN Customers c
 ON c.CustomerKey = s.CustomerKey
 GROUP BY 1,2
 ORDER BY 3 DESC;
 
 
  -- SUBQUERY 
 /*
 1.SELECT
 2.FROM
 3.WHERE
 4.JOINS
 5.HAVING
 */
 
 -- 1. Subquery IN SELECT Clause
 -- Find the each subcategoryname with average product cost
 SELECT 
     ps.SubcategoryName,
     ROUND(AVG(p.ProductCost),0) AS AvgCost
FROM Products p
JOIN productsubcategories ps
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
GROUP BY 1;


 SELECT ps.SubcategoryName, ( 
     SELECT 
     ROUND(AVG(p.ProductCost),0)
     FROM Products p
     WHERE ps.ProductSubcategoryKey = p.ProductSubcategoryKey
) AS AvgCost
FROM productsubcategories ps
ORDER BY AvgCost DESC;

-- Find the each region with total returns?
SELECT 
     t.region,
     SUM(r.ReturnQuantity) AS TotalReturns
FROM territories t
JOIN Returns r 
ON r.TerritoryKey = t.SalesTerritoryKey
GROUP BY 1;

-- Subquery
SELECT  t.region, (
   SELECT 
      SUM(r.ReturnQuantity)
   FROM Returns r 
   WHERE r.TerritoryKey = t.SalesTerritoryKey
) AS TotalReturns
FROM territories t
ORDER BY TotalReturns DESC;

-- SUBQUERIES in FROM Clause
-- List top 10 Products by its total revenue?
SELECT 
    p.ProductKey,
    p.ProductName,
    sub.TotalRevenue
FROM Products p ,
(
   SELECT 
       s.ProductKey,
       ROUND(SUM(s.OrderQuantity * p.ProductPrice),0) AS TotalRevenue
	FROM Sales2017 s
    JOIN Products p
    ON p.ProductKey = s.ProductKey
    GROUP BY s.ProductKey
) sub
WHERE sub.ProductKey = p.ProductKey 
ORDER BY sub.TotalRevenue DESC
LIMIT 10;

-- SubQueries in WHERE clause
-- Find the products that are retruned more than 50 times?
SELECT 
    ProductName,
    ModelName,
    ProductPrice
FROM Products p 
WHERE ( 
         SELECT 
            SUM(ReturnQuantity) AS TotalReturns 
		FROM Returns r 
        WHERE r.ProductKey = p.ProductKey
) > 50;

-- WIth joins
SELECT 
	ProductName,
    ModelName,
    ProductPrice,
    SUM(ReturnQuantity) AS TotalReturns
FROM Products p
JOIN Returns r 
ON p.ProductKey = r.ProductKey 
GROUP BY 1,2,3
HAVING TotalReturns > 50;

-- Find the products whose productprice > avgPrice with the subcategory
SELECT 
    ProductName,
    ModelName,
    ProductPrice
FROM Products p
WHERE ProductPrice > (
        SELECT 
            AVG(ProductPrice) 
		FROM Products p2
        WHERE p.ProductSubcategoryKey = p2.ProductSubcategoryKey
);

-- SubQueries in HAVING Clause 
-- Find the products which are returned more than the avg return quantity ?
SELECT 
	p.ProductName,
    SUM(r.ReturnQuantity) AS Total_Return_Qty
FROM Products p 
JOIN Returns r 
ON r.ProductKey = p.ProductKey
GROUP BY 1
HAVING SUM(r.ReturnQuantity) > (

     SELECT 
		AVG(Total_Return_Qty)
     FROM (
		SELECT 
			SUM(ReturnQuantity) AS Total_Return_Qty
		FROM Returns 
        GROUP BY ProductKey
     ) sub 
);
-- individual table
SELECT 
	p.ProductName,
    SUM(r.ReturnQuantity) AS Total_Return_Qty
FROM Products p 
JOIN Returns r 
ON r.ProductKey = p.ProductKey
GROUP BY 1;

SELECT 
		AVG(Total_Return_Qty)
     FROM (
		SELECT 
			SUM(ReturnQuantity) AS Total_Return_Qty
		FROM Returns 
        GROUP BY ProductKey
     ) sub ;
     
-- SubQueries in JOIN clause
-- Find the regions with their return quantity using subquery in join clause 
SELECT 
    t.Region,
    sub.total_return_quantity 
FROM territories t
JOIN ( 
	SELECT
		r.TerritoryKey,
        SUM(r.ReturnQuantity) AS total_return_quantity
        FROM Returns r 
        GROUP BY r.TerritoryKey
) sub
ON t.SalesTerritoryKey = sub.TerritoryKey
ORDER BY sub.total_return_quantity DESC;

-- WITH CTE
WITH TotalReturnsTable AS (  
	SELECT
		r.TerritoryKey,
        SUM(r.ReturnQuantity) AS total_return_quantity
        FROM Returns r 
        GROUP BY r.TerritoryKey
) SELECT 
    Region,
    total_return_quantity 
FROM territories t
JOIN TotalReturnsTable r
ON t.SalesTerritoryKey = r.TerritoryKey
ORDER BY total_return_quantity DESC;

-- Correlated Subquery
-- products that are returned more than the average return qty in their subcategory?
SELECT 
	p.ProductKey,
    p.ProductName,
    r.ReturnQuantity
FROM Products p 
JOIN Returns r 
ON p.ProductKey = r.ProductKey
WHERE r.ReturnQuantity > (
		SELECT AVG(r2.ReturnQuantity)
        FROM Returns r2
        JOIN Products p2
        ON r2.ProductKey = p2.ProductKey
        WHERE p2.ProductSubcategoryKey = p.ProductSubcategoryKey
)
ORDER BY  r.ReturnQuantity DESC;

-- Nested Subquery inside Subquery
-- Return the region with the maximun return value?
SELECT 
	t.Region,
    sub.Total_return_qty
FROM Territories t 
JOIN (
  SELECT
   r.TerritoryKey,
   SUM(r.ReturnQuantity) AS Total_return_qty
   FROM Returns r 
   GROUP BY r.TerritoryKey
) sub
ON t.SalesTerritoryKey = sub.TerritoryKey
WHERE sub.Total_return_qty = (
   SELECT MAX(Total_return_qty)
   FROM ( 
	SELECT
	   r2.TerritoryKey,
	   SUM(r2.ReturnQuantity) AS Total_return_qty
	   FROM Returns r2
	   GROUP BY r2.TerritoryKey
	)sub2 
);

-- DATE Manipulation 
-- DATE FORMAT (YYYY-MM-DD)   
-- 1000-01-01 Till 9999-12-31 
--  3 Bytes 
--  TODAY() -> returns current date  ,
--  NOW() -> TIMESTAMP -> DATETIME

-- CURRENT_DATE()
SELECT current_date();

-- Lets create a table name events
-- TIMESTAMP - [YYYY-MM-DD HH:MM:SS]
CREATE TABLE Events(
	event_id INT AUTO_INCREMENT,
    event_name VARCHAR(100),
    event_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    delivery_date DATE,
    PRIMARY KEY(event_id)
);

DESC Events;

INSERT INTO Events(event_name,event_date,delivery_date)
VALUES('audit', '2025-06-26 15:00:00','2025-06-26');

INSERT INTO events (event_name, event_date, delivery_date)
VALUES 
('Product Launch', '2025-07-15', '2025-07-10'),
('Annual Meetup', '2025-08-01', '2025-07-25'),
('Marketing Campaign', '2025-07-05', '2025-07-01'),
('Customer Webinar', '2025-06-30', '2025-06-25'),
('Software Deployment', '2025-07-20', '2025-07-18');

SELECT * FROM Events;

INSERT INTO Events(event_name,event_date,delivery_date)
VALUES('Project X', CURRENT_TIMESTAMP(), CURRENT_DATE());

SELECT CURRENT_TIME();

ALTER TABLE Events 
ADD COLUMN event_time TIME;
DESC Events;
SELECT * FROM Events;

INSERT INTO Events(event_name, delivery_date, event_time)
VALUES('Team Sync' , CURRENT_DATE(), CURRENT_TIME());

-- CURRENT_TIMESTAMP() OR NOW()
SELECT CURRENT_TIMESTAMP();
SELECT NOW();

SELECT YEAR('2025-06-21');
SELECT YEAR(CURRENT_DATE());
SELECT MONTH(CURRENT_DATE());
SELECT DAY(CURRENT_DATE());

-- Using extact to extract month/year/day from a date.
SELECT EXTRACT(YEAR FROM CURRENT_DATE()) AS Current_Year;

USE Bike_sales;
DESC Events;

SELECT 
	event_name,
    event_date,
    EXTRACT(MONTH FROM event_date) AS event_month
FROM Events;

-- DATE_FORMAT -> 26th of June 2026
SELECT 
	event_name,
    event_date,
    DATE_FORMAT(event_date, '%D of %M-%Y ') AS Formatted_date,
    EXTRACT(MONTH FROM event_date) AS event_month
FROM Events;

USE bike_sales;

SELECT * FROM Events;

-- DATE Grouping 
-- YEAR
SELECT 
	YEAR(event_date) AS Year,
    COUNT(*) AS event_count
FROM Events
GROUP BY 1;

-- MONTH
SELECT 
	MONTH(event_date) AS Year,
    COUNT(*) AS event_count
FROM Events
GROUP BY 1;

-- DATE Arithmetic
-- 1. DATE_ADD()
-- 2. DATE_SUB()

SELECT DATE_ADD('2024-05-11', INTERVAL 10 DAY) AS DateAdd;
SELECT DATE_ADD('2024-05-11', INTERVAL -10 DAY) AS DateAdd;
SELECT DATE_SUB('2024-05-11', INTERVAL 1 MONTH) AS DateSub;
SELECT DATE_SUB('2024-05-11', INTERVAL -1 MONTH) AS DateSub;


-- Chaining of Intervals
SELECT 
	DATE_ADD(
	DATE_ADD('2024-05-11', INTERVAL 1 MONTH),
    INTERVAL 10 DAY 
) AS ChainingOfDate;

SELECT 
	DATE_ADD('2026-06-28 19:25:57' , INTERVAL 1 YEAR);

SELECT * FROM Events;
-- update all the delivery date by +3 days?
DESC Events;

SET SQL_SAFE_UPDATES = 0;

UPDATE Events
SET delivery_date = DATE_ADD(event_date, INTERVAL 3 DAY);

SELECT DATE_ADD('2026-06-28 19:25:57' , INTERVAL 23 Hour);

SELECT DATE_ADD('2026-06-28 ' , INTERVAL 25 Hour);

-- DATEDIFF()
SELECT
	event_id,
    event_name,
    event_date,
    delivery_date,
    DATEDIFF(delivery_date, event_date) AS Delivery_Days_diff
FROM Events;

SELECT
	*,
    DATEDIFF(delivery_date, event_date) AS Delivery_Days_diff
FROM Events;

-- Handling Nagative diff 
SELECT
	*,
    ABS(DATEDIFF(event_date, delivery_date)) AS Delivery_Days_diff
FROM Events;

DESC Customers;
SELECT * FROM Returns;

-- STR_TO_DATE()
SELECT 
	 STR_TO_DATE('30th May 2026', '%D %M %Y');

-- DATA CLEANING / DATA PREPROCESSING IN Original Tables
DESC Calendar;
SELECT * FROM Calendar;
-- Pattern DD-MM-YYYY
-- First rename the column to calendar_date
ALTER TABLE Calendar
RENAME COLUMN Date to Calendar_date;
UPDATE Calendar
SET Calendar_date = STR_TO_DATE(Calendar_date, '%d-%m-%Y');

ALTER TABLE Calendar
MODIFY COLUMN Calendar_date Date;

-- Customers
DESC Customers;
SELECT * FROM Customers;
-- Pattern DD/MM/YYYY
UPDATE Customers
SET DateOfBirth = STR_TO_DATE(DateOfBirth, '%d/%m/%Y');
SELECT COUNT(*) FROM Customers;
ALTER TABLE Customers
MODIFY COLUMN DateOfBirth Date;

-- Orders
DESC Orders;

-- Returns
DESC Returns;
SELECT * FROM Returns;
-- Pattern MM/DD/YYYY -- month/date is in single date
UPDATE Returns
SET ReturnDate = STR_TO_DATE(ReturnDate, '%c/%e/%Y');
SELECT COUNT(*) FROM Returns;
ALTER TABLE Returns
MODIFY COLUMN ReturnDate Date;

-- Sales2015
DESC Sales2015;
SELECT OrderDate, StockDate FROM Sales2015;
SELECT COUNT(*) FROM Sales2015; -- 2630
-- OrderDate Pattern - mm-dd-yyyy or m/dd/yyyy
-- StockDate Pattern - m/dd/yyyy or mm-dd-yyyy
-- OrderDate
UPDATE Sales2015
SET OrderDate = 
		CASE
			WHEN OrderDate LIKE '__-__-____' THEN STR_TO_DATE(OrderDate, '%m-%d-%Y')
            ELSE STR_TO_DATE(OrderDate, '%c/%d/%Y')
        END; 
-- StockDate
UPDATE Sales2015
SET StockDate = STR_TO_DATE(StockDate, '%m-%d-%Y')
WHERE StockDate LIKE '__-__-____' ;

UPDATE Sales2015
SET StockDate = STR_TO_DATE(StockDate, '%c/%d/%Y')
WHERE StockDate LIKE '%/%/%';

ALTER TABLE Sales2015
MODIFY COLUMN OrderDate Date,
MODIFY COLUMN StockDate DATE;

-- sales2016
DESC sales2016;
SELECT 
    OrderDate,
    StockDate
FROM sales2016;
-- Pattern m/d/yyyy
UPDATE Sales2016
SET StockDate = STR_TO_DATE(StockDate, '%c/%d/%Y')
WHERE StockDate LIKE '%/%/%';
UPDATE Sales2016
SET OrderDate = STR_TO_DATE(OrderDate, '%c/%d/%Y')
WHERE OrderDate LIKE '%/%/%';
SELECT Count(*) FROM sales2016;
ALTER TABLE Sales2016
MODIFY COLUMN OrderDate Date,
MODIFY COLUMN StockDate DATE;

-- sales2017
DESC sales2017;
SELECT 
   *
FROM sales2017;
SELECT Count(*) FROM Sales2017;
UPDATE Sales2017
SET StockDate = STR_TO_DATE(StockDate, '%c/%d/%Y')
WHERE StockDate LIKE '%/%/%';
UPDATE Sales2017
SET OrderDate = STR_TO_DATE(OrderDate, '%c/%d/%Y')
WHERE OrderDate LIKE '%/%/%';
ALTER TABLE Sales2017
MODIFY COLUMN OrderDate Date,
MODIFY COLUMN StockDate DATE;

USE Bike_sales;

-- WINDOW FUNCTIONS - I 
DESC Sales;
SELECT * FROM Sales;

-- find the cumulative total sum sales by each sales person?
SELECT 
	*,
    SUM(SaleAmount) OVER (
		PARTITION BY Salesperson
        ORDER BY SaleDate
) AS CumulativeSalesPerPerson
FROM Sales;

SELECT 
	Salesperson,
    SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY 1;

-- RANK() --- DENSE_RANK()
-- RANK the sales by sales Amount.
SELECT 
	*,
    RANK() OVER(
	ORDER BY SaleAmount DESC
) AS SalesRack
FROM Sales;

SELECT 
	*,
    DENSE_RANK() OVER(
	ORDER BY SaleAmount DESC
) AS SalesRack
FROM Sales;

-- Finding the 3 days moving average?
SELECT 
	*,
    AVG(SaleAmount) OVER(
    ORDER BY SaleDate
    ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
) AS MovingAverage
FROM Sales;

-- Finding the 5 days moving average?
SELECT 
	*,
    AVG(SaleAmount) OVER(
    ORDER BY SaleDate
    ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING
) AS MovingAverage
FROM Sales;

 /* Football Analogy  --> Aggregate or Window function [Aggregate]
 Aggregate --> We wanted to know the total goal per match 
 Window Function [Aggregate] --> Here, we need to know each and indiviual player performance of a match. */
 
 -- Income Differnence from AvgIncome
 SELECT 
	CustomerKey,
    FullName,
    AnnualIncome,
    AnnualIncome - AVG(AnnualIncome) OVER() AS income_diff_from_avg
FROM Customers;

SELECT AVG(AnnualIncome) FROM Customers;

-- Find the maximum AnnualIncome based on Prefix/Gender?
SELECT DISTINCT Prefix FROM Customers;
SELECT DISTINCT Gender FROM Customers;

 SELECT 
	CustomerKey,
    Prefix,
    FullName,
    AnnualIncome,
    MAX(AnnualIncome) OVER(
		partition by Prefix
    ) AS max_income_by_prefix
FROM Customers
WHERE Prefix IS NOT NULL;

 SELECT 
	CustomerKey,
    Prefix,
    FullName,
    Gender,
    AnnualIncome,
    MAX(AnnualIncome) OVER(
		partition by Gender
    ) AS max_income_by_gender
FROM Customers; 

USE bike_sales;

-- Window Functions - II
-- CASE with window functions
/*
1. If the productCost = Max(ProductCost) -> "Highest"   ----- CostCategory
2. If the productCost = Min(ProductCost) -> "Lowest"
3. Else "Middle"
*/

SELECT 
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
	CASE
		WHEN ProductCost = MAX(ProductCost) OVER (PARTITION BY ProductSubcategoryKey) THEN 'Highest'
        WHEN ProductCost = MIN(ProductCost) OVER (PARTITION BY ProductSubcategoryKey) THEN 'Lowest'
        ELSE 'Middle'
        END AS CostCategory
FROM Products;

-- RANKING()
-- Within a gender I want to the ranking based on AnnualIncome.

SELECT distinct Gender FROM Customers;

SELECT 
	CustomerKey,
    Gender,
    FullName,
    AnnualIncome,
    RANK() OVER (partition by Gender ORDER BY AnnualIncome DESC) AS Income_rack
FROM Customers;

-- Rank customer within each maritalStatus and order by birthdate(oldest to youngest)?
SELECT 
	CustomerKey,
    FullName,
    MaritalStatus,
    DateOfBirth,
    RANK() OVER (partition by MaritalStatus ORDER BY DateOfBirth) AS Rank_By_Birthdate
FROM Customers;

-- Rank the product and create a category with case statement where the productCost is being ranked based on productSubcategoryKey.
-- 1 Rank [Top Rank]
-- <= 5 Rank [medium Rank]
-- Else [Bottom Rank]

SELECT 
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
    RANK() OVER ( partition by ProductSubcategoryKey ORDER BY ProductCost DESC ) AS ProductRank,
    CASE 
		WHEN RANK() OVER ( partition by ProductSubcategoryKey ORDER BY ProductCost DESC ) = 1 THEN 'Top Rank'
        WHEN RANK() OVER ( partition by ProductSubcategoryKey ORDER BY ProductCost DESC ) <= 5 THEN 'Medium Rank'
        ELSE 'Bottom Rank'
	END AS CostCategory
FROM Products;
    
-- Optimal Code [WITH CTE]
WITH ProductRanking AS (
	SELECT 
		ProductSubcategoryKey,
		ProductName,
		ProductCost,
		RANK() OVER ( partition by ProductSubcategoryKey ORDER BY ProductCost DESC ) AS ProductRank
FROM Products
)
SELECT 
	*,
    CASE 
		WHEN ProductRank = 1 THEN 'Top Rank'
        WHEN ProductRank <= 5 THEN 'Medium Rank'
        ELSE 'Bottom Rank'
	END AS Costcategory
FROM ProductRanking;
        
-- DENSE_RANK() 
SELECT 
	CustomerKey,
    Gender,
    FullName,
    AnnualIncome,
    DENSE_RANK() OVER (partition by Gender ORDER BY AnnualIncome DESC) AS Income_rack
FROM Customers;

-- ROW_NUMBER()
SELECT 
	CustomerKey,
    Gender,
    FullName,
    AnnualIncome,
    ROW_NUMBER() OVER (partition by Gender ORDER BY AnnualIncome DESC) AS Income_rack
FROM Customers;

-- LEAD() & LAG() Next value -LEAD || previous Value - Lag
SELECT 	
	SaleID,
    Salesperson,
    SaleAmount,
    SaleDate,
    LAG(SaleAmount) OVER (PARTITION BY Salesperson ORDER BY SaleDate) AS PreviousSales,
	LEAD(SaleAmount) OVER (PARTITION BY Salesperson ORDER BY SaleDate) AS NextSales
FROM sales;

-- LEAD() & LAG() Challenge [Original Table]
DESC sales2015;

SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue,
    LAG( ROUND(SUM(p.ProductPrice * s.OrderQuantity),0))
    OVER (ORDER BY DATE_FORMAT(s.OrderDate, "%Y-%m")) AS PreviousMonthRevenue,
    LEAD( ROUND(SUM(p.ProductPrice * s.OrderQuantity),0))
    OVER (ORDER BY DATE_FORMAT(s.OrderDate, "%Y-%m")) AS NextMonthRevenue
FROM sales2015 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY DATE_FORMAT(s.OrderDate, "%Y-%m")
ORDER BY Year_and_month;

-- Same above code with CTE
WITH UnderstandingRevenue AS (
SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM sales2015 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_and_month
ORDER BY Year_and_month
)
SELECT
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS PreviousMonthRevenue,
	LEAD(TotalRevenue) OVER ( ORDER BY Year_and_month) AS NextMonthRevenue
FROM UnderstandingRevenue;


-- Window Functions III
-- Add sales_amount_change
WITH UnderstandingRevenue AS (
SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM sales2015 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_and_month
ORDER BY Year_and_month
)
SELECT
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS PreviousMonthRevenue,
	LEAD(TotalRevenue) OVER ( ORDER BY Year_and_month) AS NextMonthRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS SalesAmountChange
FROM UnderstandingRevenue;

-- Add the column for category SalesTrend
WITH UnderstandingRevenue AS (
SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM sales2015 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_and_month
ORDER BY Year_and_month
)
SELECT
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS PreviousMonthRevenue,
	LEAD(TotalRevenue) OVER ( ORDER BY Year_and_month) AS NextMonthRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS SalesAmountChange,
    CASE
		WHEN TotalRevenue > LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) THEN 'Increse_in_Trend'
        WHEN TotalRevenue < LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) THEN 'Decrese_in_Trend'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;

-- Add the column for category SalesTrend [Alternative Approach]
WITH UnderstandingRevenue AS (
SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM sales2015 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_and_month
ORDER BY Year_and_month
)
SELECT
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS PreviousMonthRevenue,
	LEAD(TotalRevenue) OVER ( ORDER BY Year_and_month) AS NextMonthRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS SalesAmountChange,
    CASE
		WHEN TotalRevenue -  LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) > 0 THEN 'Increse_in_Trend'
        WHEN TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) < 0 THEN 'Decrese_in_Trend'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;

-- Analyse the company's year-over-year sales trend and classify each year as "Incresed" , "Descresed" or "No change" compared to the previous year?

WITH AllSales AS (
SELECT * FROM sales2015
UNION ALL
SELECT * FROM sales2016
UNION ALL
SELECT * FROM sales2017
),
UnderstandingRevenue AS (
SELECT
	YEAR(s.OrderDate) AS Year_Part,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM AllSales s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_Part
ORDER BY Year_Part
)
SELECT
	Year_Part,
    TotalRevenue,
    LAG(TotalRevenue) OVER ( ORDER BY Year_Part) AS PreviousYearRevenue,
	LEAD(TotalRevenue) OVER ( ORDER BY Year_Part) AS NextYearRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_Part) AS SalesAmountChange,
    CASE
		WHEN TotalRevenue -  LAG(TotalRevenue) OVER ( ORDER BY Year_Part) > 0 THEN 'Increse_in_Trend'
        WHEN TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_Part) < 0 THEN 'Decrese_in_Trend'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;

-- Second Approach
WITH AllSales AS (
SELECT * FROM sales2015
UNION ALL
SELECT * FROM sales2016
UNION ALL
SELECT * FROM sales2017
),
UnderstandingRevenue AS (
SELECT
	YEAR(s.OrderDate) AS Year_Part,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM AllSales s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_Part
ORDER BY Year_Part
)
SELECT
	Year_Part,
    TotalRevenue,
    LAG(TotalRevenue) OVER ( ORDER BY Year_Part) AS PreviousYearRevenue,
	LEAD(TotalRevenue) OVER ( ORDER BY Year_Part) AS NextYearRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_Part) AS SalesAmountChange,
    CASE
		WHEN TotalRevenue > LAG(TotalRevenue) OVER ( ORDER BY Year_Part) THEN 'Increse_in_Trend'
        WHEN TotalRevenue < LAG(TotalRevenue) OVER ( ORDER BY Year_Part) THEN 'Decrese_in_Trend'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;

-- rate of change
WITH AllSales AS (
SELECT * FROM sales2015
UNION ALL
SELECT * FROM sales2016
UNION ALL
SELECT * FROM sales2017
),
UnderstandingRevenue AS (
SELECT
	YEAR(s.OrderDate) AS Year_Part,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM AllSales s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_Part
ORDER BY Year_Part
)
SELECT
	Year_Part,
    TotalRevenue,
    LAG(TotalRevenue) OVER ( ORDER BY Year_Part) AS PreviousYearRevenue,
	LEAD(TotalRevenue) OVER ( ORDER BY Year_Part) AS NextYearRevenue,
    CONCAT(ROUND(((TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_Part)) / LAG(TotalRevenue) OVER ( ORDER BY Year_Part)) * 100, 0),"%")
    AS SalesAmountChangeInPercentage,
    CASE
		WHEN TotalRevenue > LAG(TotalRevenue) OVER ( ORDER BY Year_Part) THEN 'Increse_in_Trend'
        WHEN TotalRevenue < LAG(TotalRevenue) OVER ( ORDER BY Year_Part) THEN 'Decrese_in_Trend'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;

-- Sales trend in 2017
WITH UnderstandingRevenue AS (
SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM sales2017 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_and_month
ORDER BY Year_and_month
)
SELECT
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS PreviousMonthRevenue,
	LEAD(TotalRevenue) OVER ( ORDER BY Year_and_month) AS NextMonthRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) AS SalesAmountChange,
    CASE
		WHEN TotalRevenue -  LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) > 0 THEN 'Increse_in_Trend'
        WHEN TotalRevenue - LAG(TotalRevenue) OVER ( ORDER BY Year_and_month) < 0 THEN 'Decrese_in_Trend'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;

-- NTILE() -> NTILE using this to bucket our data into 'n' group
-- SYNTAX
/*
NTILE(Number of bucket) OVER (ORDER BY ColumnName)
*/

-- Split the column ProductPrice column into quartile -> 
SELECT
	ProductName,
    ProductPrice,
    NTILE(4) OVER (ORDER BY ProductPrice) AS Price_quartile
FROM Products;

-- Divide each month's total sales into 3 performance tiers (terciles) to categories months as low, medium or high-performance?
WITH MonthlySales AS (
SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM sales2017 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_and_month
ORDER BY Year_and_month
)
SELECT
	Year_and_month,
    TotalRevenue,
    NTILE(3) OVER (ORDER BY TotalRevenue) AS Sales_tercile
FROM MonthlySales;

WITH MonthlySales AS (
SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM (
	SELECT * FROM Sales2015
    UNION ALL
    SELECT * FROM Sales2016
    UNION ALL
    SELECT * FROM Sales2017
    ) AS s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_and_month
ORDER BY Year_and_month
)
SELECT
	Year_and_month,
    TotalRevenue,
    NTILE(3) OVER () AS Sales_tercile
FROM MonthlySales;

-- Filter the products lying within the lower bound & upper bound
WITH Product_stats AS (
	SELECT 
		ProductPrice,
        NTILE(4) OVER (ORDER BY ProductPrice) AS Price_quartile
	FROM Products
),
Quartiles AS (
	SELECT 
		MAX(CASE WHEN Price_quartile = 1 THEN ProductPrice END) AS Q1,
		MAX(CASE WHEN Price_quartile = 3 THEN ProductPrice END) AS Q3
	FROM Product_stats
),
iqr_bounds AS (
	SELECT
		Q1,
        Q3,
        Q3-Q1 AS IQR,
        Q1 - (1.5 * (Q3-Q1)) AS Lower_bound,
        Q3 + (1.5 * (Q3-Q1)) AS Upper_bound
	FROM Quartiles
)
SELECT
	p.ProductKey,
    p.ProductName,
    p.ProductPrice
FROM Products p
JOIN iqr_bounds iqr
ON p.ProductPrice BETWEEN iqr.Lower_bound AND iqr.Upper_bound
ORDER BY ProductPrice;
	
-- Detecting Outliers
WITH Product_stats AS (
	SELECT 
		ProductPrice,
        NTILE(4) OVER (ORDER BY ProductPrice) AS Price_quartile
	FROM Products
),
Quartiles AS (
	SELECT 
		MAX(CASE WHEN Price_quartile = 1 THEN ProductPrice END) AS Q1,
		MAX(CASE WHEN Price_quartile = 3 THEN ProductPrice END) AS Q3
	FROM Product_stats
),
iqr_bounds AS (
	SELECT
		Q1,
        Q3,
        Q3-Q1 AS IQR,
        Q1 - (1.5 * (Q3-Q1)) AS Lower_bound,
        Q3 + (1.5 * (Q3-Q1)) AS Upper_bound
	FROM Quartiles
)
SELECT
	p.ProductKey,
    p.ProductName,
    p.ProductPrice
FROM Products p
JOIN iqr_bounds iqr
ON p.ProductPrice < iqr.Lower_bound OR p.ProductPrice > iqr.Upper_bound
ORDER BY ProductPrice;

-- Window Functions - IV
-- First_Value() --> Earliest

/*
Syntax : 
		window_function(..) OVER ( PARTITION BY column_name ORDER BY Column_name
        ROWS/RANGE...
        ) AS result_column
	FROM Table_name;
*/

-- 1. Find the customers who purchased each products based on the earliest date?
SELECT 
	s.ProductKey,
    c.FullName,
    s.OrderDate,
    FIRST_VALUE(c.FullName) OVER ( partition by s.ProductKey ORDER BY s.OrderDate) AS First_Purchased
FROM Customers c
JOIN Sales2015 s 
ON s.CustomerKey = c.Customerkey
ORDER BY s.ProductKey;

-- 2016
SELECT 
	s.ProductKey,
    c.FullName,
    s.OrderDate,
    FIRST_VALUE(c.FullName) OVER ( partition by s.ProductKey ORDER BY s.OrderDate) AS First_Purchased
FROM Customers c
JOIN Sales2016 s 
ON s.CustomerKey = c.Customerkey
ORDER BY s.ProductKey;

-- 2017
SELECT 
	s.ProductKey,
    c.FullName,
    s.OrderDate,
    FIRST_VALUE(c.FullName) OVER ( partition by s.ProductKey ORDER BY s.OrderDate) AS First_Purchased
FROM Customers c
JOIN Sales2017 s 
ON s.CustomerKey = c.Customerkey
ORDER BY s.ProductKey;

-- LAST_VALUE()  --> Latest Record --> UNBOUND PRECEDING & UNBOUND FOLLOWING
-- Find the last region where each product was sold based on latest orderdate?
SELECT
	s.ProductKey,
    t.Region,
    s.OrderDate,
    LAST_VALUE(t.Region) OVER (PARTITION BY s.ProductKey ORDER BY s.OrderDate 
    RANGE BETWEEN unbounded preceding AND unbounded following) AS Last_Region_Product_sold
FROM Sales2017 s
JOIN territories t
ON t.SalesTerritoryKey = s.TerritoryKey
ORDER BY s.ProductKey;

-- NTH-VALUE(ColumnName, NTH) OVER (PARTITION BY ..... ORDER BY ......RANGES.....)

-- For Each Product, retrieve the price of the 3rd sales based on the product sales price order?
SELECT 
	s.ProductKey,
    c.FullName,
    s.OrderDate,
    NTH_VALUE(c.FullName,3) OVER ( partition by s.ProductKey ORDER BY s.OrderDate ) AS third_Purchased
FROM Customers c
JOIN Sales2017 s 
ON s.CustomerKey = c.Customerkey
ORDER BY s.ProductKey;

SELECT 
	s.ProductKey,
    c.FullName,
    s.OrderDate,
    NTH_VALUE(c.FullName,3) OVER ( partition by s.ProductKey ORDER BY s.OrderDate
    RANGE BETWEEN unbounded preceding AND unbounded following) AS third_Purchased
FROM Customers c
JOIN Sales2017 s 
ON s.CustomerKey = c.Customerkey
ORDER BY s.ProductKey;

USE bike_sales;

-- Problem statements of window functions
/*
1. Avg days between orders for same category.
PS : For each customer and product subcategory, calculate the average number of days between consecutive days orders.
*/
WITH subcategory_orders AS (
			SELECT
				s.CustomerKey,
                p.ProductSubcategoryKey,
                s.OrderDate,
                LAG(s.OrderDate) OVER (
					PARTITION BY s.CustomerKey, p.ProductSubcategoryKey ORDER BY s.OrderDate) AS prevOrderDate
			FROM products p
            JOIN sales2017 s
            ON p.ProductKey = s.ProductKey
)
SELECT 
	CustomerKey,
    ProductSubcategoryKey,
    ROUND(AVG(DATEDIFF(OrderDate, prevOrderDate)),0) AS AvgOrderDays
FROM subcategory_orders
WHERE prevOrderDate IS NOT NULL
GROUP BY CustomerKey, ProductSubcategoryKey;
				
/*
Q2: Longest Out-Of-Stock Duration
PS: Find the product that remined out of stock for the longest time and calculate how many days it was unavailable. 
*/

WITH stock_changes AS (
		SELECT
			ProductKey,
            StockDate,
            LEAD(StockDate) OVER (PARTITION BY ProductKey ORDER BY StockDate) 
            AS NextStockDate
		FROM sales2017
)
SELECT 
	ProductKey,
    MAX(DATEDIFF(NextStockDate, StockDate)) AS Days_out_of_stock
FROM stock_changes
WHERE NextStockDate IS NOT NULL
GROUP BY ProductKey
ORDER BY Days_out_of_stock DESC;

/*
Q3: Yearly Sales trend with 1% change
PS: Show total sales per year and calculate the percentage growth or decline from the previous year.
*/

WITH Yearly_sales AS (
		SELECT 
			YEAR(s.OrderDate) AS year_part,
            ROUND(SUM(s.OrderQuantity * p.ProductPrice),0) AS TotalRevenue
		FROM (
        SELECT * FROM sales2015
        UNION ALL 
        SELECT * FROM sales2016
        UNION ALL 
        SELECT * FROM sales2017
        ) s 
        JOIN Products p 
        ON p.ProductKey = s.ProductKey
        GROUP BY YEAR(OrderDate)
),
SalesTrend AS (
		SELECT 
			year_part,
            TotalRevenue,
            LAG(TotalRevenue) OVER (ORDER BY year_part) AS PrevRevenue
		FROM Yearly_sales
)
SELECT 
	year_part,
    TotalRevenue,
    ROUND((TotalRevenue - PrevRevenue)/PrevRevenue * 100.0, 2) AS RevenueChangePercentage
FROM SalesTrend
WHERE PrevRevenue IS NOT NULL;

/*
Q4: Row-wise value Insights
PS: For each sale, Show the first, last and third sale amount within its product's transaction history.
*/


-- Views , indexes & Data Partitioning

-- VIEW - A Virtual Table
CREATE OR REPLACE VIEW `Children` AS
SELECT 
	CustomerKey,
    FirstName,
    LastName,
    TotalChildren
FROM Customers
WHERE TotalChildren > 3;

SELECT * FROM Children;
SELECT Count(*) FROM Children;


CREATE OR REPLACE VIEW `SalesTrend` AS 
SELECT
	DATE_FORMAT(s.OrderDate, "%Y-%m") AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM sales2017 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY Year_and_month
ORDER BY Year_and_month;

SELECT * FROM SalesTrend;

SHOW FULL TABLES WHERE Table_type = 'VIEW';


-- INDEXES --
DESC Customers;
SHOW indexes From Customers;
CREATE INDEX idx_customerkey ON Customers(Customerkey);
    
SELECT * FROM Customers WHERE Gender = 'M';
SELECT * FROM Customers WHERE CustomerKey = 11061;

CREATE INDEX idx_occupation ON Customers(Occupation(30));

-- PRIMARY INDEX [Clustered Index]
CREATE TABLE Student_info (
	studentid INT NOT NULL auto_increment,
    name VARCHAR(15),
    age VARCHAR(3),
    mobile VARCHAR(10),
    email VARCHAR(50),
    primary key(studentid),
    UNIQUE KEY email_UNIQUE(Email)
);
DESC Student_info;
SHOW INDEX FROM Student_info;

DROP INDEX idx_occupation ON Customers;
DROP INDEX idx_customerkey ON Customers;

CREATE TABLE Employee_detail (
	ID INT AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(20),
    Email VARCHAR(45),
    Phone VARCHAR(10),
    City varchar(25),
    UNIQUE KEY unique_email (Email)
);

DESC Employee_detail;
SHOW INDEX FROM Student_info;
SHOW INDEX FROM Employee_detail;

CREATE UNIQUE INDEX idx_email_phone ON Employee_detail(Email, Phone);

SELECT * FROM Employee_detail;

INSERT INTO Employee_detail 
VALUES(101, 'Punit', 'Punit@gmail.com', '9999222229', 'Delhi');

INSERT INTO Employee_detail VALUES
(2, 'Jane Smith', 'jane.smith@example.com', '9123456789', 'Delhi'),
(3, 'Raj Kumar', 'raj.kumar@example.com', '9988776655', 'Bangalore'),
(4, 'Priya Sharma', 'priya.sharma@example.com', '8877665544', 'Chennai'),
(5, 'Amit Patel', 'amit.patel@example.com', '9090909090', 'Ahmedabad'),
(6, 'Sara Khan', 'sara.khan@example.com', '8787878787', 'Hyderabad'),
(7, 'Vikram Rao', 'vikram.rao@example.com', '7676767676', 'Pune'),
(8, 'Neha Jain', 'neha.jain@example.com', '9898989898', 'Kolkata'),
(9, 'Arjun Mehta', 'arjun.mehta@example.com', '9738293890', 'Delhi');

SELECT * FROM Employee_detail;
 
CREATE TABLE Sales1 (
  cust_id INT NOT NULL,
  name VARCHAR(40),
  store_id VARCHAR(20) NOT NULL,
  bill_no INT NOT NULL,
  bill_date DATE NOT NULL PRIMARY KEY,
  amount DECIMAL(8,2) NOT NULL
)
PARTITION BY RANGE (YEAR(bill_date)) (
  PARTITION p0 VALUES LESS THAN (2016),
  PARTITION p1 VALUES LESS THAN (2017),
  PARTITION p2 VALUES LESS THAN (2018),
  PARTITION p3 VALUES LESS THAN (2020)
);

DESC Sales1;
SELECT TABLE_NAME, PARTITION_NAME, TABLE_ROWS
FROM INFORMATION_SCHEMA.PARTITIONS
WHERE TABLE_NAME = 'Sales1'; 

-- Stored Procedures and Triggers - I 

-- CREATE Store Procedure
CREATE TABLE student_info (
  stud_id INT PRIMARY KEY,
  stud_code INT,
  stud_name VARCHAR(50),
  subject VARCHAR(50),
  marks INT,
  phone VARCHAR(15)
);
INSERT INTO student_info VALUES
(1, 101, 'Mark', 'English', 68, '3454569357'),
(2, 102, 'Joseph', 'Physics', 70, '9876543659'),
(3, 103, 'John', 'Maths', 70, '9765326975'),
(4, 104, 'Barack', 'Maths', 92, '87069873256'),
(5, 105, 'Rinky', 'Maths', 85, '6753159757'),
(6, 106, 'Adam', 'Science', 82, '79642256864'),
(7, 107, 'Andrew', 'Science', 83, '5674243579'),
(8, 108, 'Brayan', 'Science', 83, '7524316576'),
(9, 109, 'Alexandar', 'Biology', 67, '2347346438');

SELECT * FROM student_info;
DESC student_info;

-- NO Parameter
-- # Get the student marks > 70 and count all students;

DELIMITER $$
CREATE procedure get_merit_student()
BEGIN
	SELECT * FROM student_info WHERE marks > 70;
    SELECT COUNT(*) AS total_student FROM student_info;
END $$
DELIMITER ;

CALL get_merit_student();

-- Managaning Store Procedure
SHOW procedure status;

SHOW procedure status WHERE DB = 'Bike_Sales';

-- There is no option to alter the procedure - Just Drop and Recreate it.

DROP PROCEDURE get_merit_student; -- Just tell the name of the procedure. 

DELIMITER $$
CREATE procedure get_merit_student()
BEGIN
	SELECT * FROM student_info WHERE marks > 70;
   -- SELECT COUNT(*) AS total_student FROM student_info;
END $$
DELIMITER ;
CALL get_merit_student();

INSERT INTO student_info VALUES
(10, 101, 'Moon', 'English', 78, '3454569357'),
(11, 102, 'Josephic', 'Physics', 80, '9876543659'),
(12, 103, 'Johny', 'Maths', 90, '9765326975');

SELECT * FROM student_info;

CALL get_merit_student();

-- Limit the numbers of records by taking input var  --> Limit value

-- IN Parameter

DELIMITER $$
CREATE procedure get_student(IN var1 INT)
BEGIN
	SELECT * FROM student_info LIMIT var1;
   -- SELECT COUNT(*) AS total_student FROM student_info;
END $$
DELIMITER ;

CALL get_student(5);
CALL get_student(7);

-- Lets take input variable as subject_name to apply filter
DELIMITER $$
CREATE procedure get_students_by_subject(IN sub_name VARCHAR(20))
BEGIN
		SELECT Stud_name, marks, subject
        FROM student_info
        WHERE subject = sub_name;
END $$
DELIMITER ;
DROP PROCEDURE get_students_by_subject;
CALL get_students_by_subject("Maths");
CALL get_students_by_subject("Science");

-- OUT Parameter
-- Display the highest marks from student_info?
DELIMITER $$
CREATE procedure display_the_highest_marks(OUT highestMarks INT )
BEGIN
		SELECT MAX(marks) INTO highestMarks FROM student_info;
END $$
DELIMITER ;

CALL display_the_highest_marks(@marks);
SELECT @marks;

CALL display_the_highest_marks(@m);
SELECT @m;

-- IN and OUT Parameter combinations of 2 parameters............
-- IN -- OUT Parameter
-- Count the number of students by subject?
DELIMITER $$
CREATE procedure count_students_by_subject(IN sub_name VARCHAR(20), OUT total_count INT )
BEGIN
		SELECT COUNT(*) INTO total_count FROM student_info WHERE subject = sub_name;
END $$
DELIMITER ;

CALL count_students_by_subject('Science', @total_count);
SELECT @total_count;

CALL count_students_by_subject('Maths', @total_count);
SELECT @total_count;

-- Calculate the average marks in a subject
DELIMITER $$
CREATE procedure get_avg_marks(IN sub_name VARCHAR(20), OUT avg_marks decimal(5,2))
BEGIN
		SELECT AVG(marks) INTO avg_marks FROM student_info WHERE subject = sub_name;
END $$
DELIMITER ;

CALL get_avg_marks('Maths', @avg_marks);
SELECT @avg_marks;

-- INOUT Parameter
DELIMITER $$
CREATE procedure Display_marks(INOUT var1 INT)
BEGIN
		SELECT marks INTO var1 FROM student_info WHERE stud_id = var1;
END $$
DELIMITER ;
SET @id = 3;
Call Display_marks(@id);
SELECT @id;

SELECT * from student_info;

-- Triggers -II

/* CREATE TRIGGER trigger_name
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON table_name
FOR EACH ROW
BEGIN
    -- SQL statements
END;
*/

CREATE DATABASE trigger_demo;
USE trigger_demo;

CREATE TABLE student_info (
  stud_id    INT PRIMARY KEY,
  stud_code  INT UNIQUE,
  stud_name  VARCHAR(50),
  subject    VARCHAR(30),
  marks      INT CHECK (marks BETWEEN 0 AND 100),
  phone      VARCHAR(15)
);

INSERT INTO student_info (stud_id, stud_code, stud_name, subject, marks, phone) VALUES
( 1,101,'Mark','English',68,'3454569357'),
( 2,102,'Joseph','Physics',70,'9876543659'),
( 3,103,'John','Maths',70,'9765326975'),
( 4,104,'Barack','Maths',92,'87069873256'),
( 5,105,'Rinky','Maths',85,'6753159757'),
( 6,106,'Adam','Science',82,'79642256864'),
( 7,107,'Andrew','Science',83,'5674243579'),
( 8,108,'Brayan','Science',83,'7524316576'),
( 9,109,'Alexandar','Biology',67,'2347346438'),
(10,110,'Clara','Biology',74,'2342342345'),
(11,111,'Derek','English',59,'4564564560'),
(12,112,'Ella','English',91,'1231231234'),
(13,113,'Fiona','Physics',65,'9879879876'),
(14,114,'George','Physics',79,'3453453451'),
(15,115,'Helen','Maths',88,'2223334445'),
(16,116,'Ian','Science',95,'6667778880'),
(17,117,'Jane','Biology',57,'9998887776'),
(18,118,'Kyle','English',73,'1112223339'),
(19,119,'Liam','Maths',81,'8887776665'),
(20,120,'Mia','Physics',93,'4445556667');

SELECT * FROM student_info;

-- BEFORE Insert 
-- Validate Marks
DELIMITER $$
	CREATE TRIGGER trg_before_insert_student
	BEFORE INSERT ON student_info
	FOR EACH ROW
BEGIN
	-- Reject the impossible marks
    IF NEW.marks > 100 OR NEW.marks < 0 THEN
    SIGNAL SQLSTATE '45000' 
	SET message_text = 'Marks must be between 0 and 100';
    END IF;
END $$
DELIMITER ;

SHOW TRIGGERS;

INSERT INTO student_info
VALUES(21, 121, 'Victor', 'Maths', 105, '7399279208');


INSERT INTO student_info
VALUES(22, 122, 'Victor', 'Maths', -10, '7399279208');

-- Error Code: 1644. Marks must be between 0 and 100

-- AFTER TRIGGER { INSERT | UPDATE | DELETE }
-- AFTER Insert [Audit log]
CREATE TABLE audit_log(
	log_id INT AUTO_INCREMENT PRIMARY KEY,
	action ENUM('INSERT', 'UPDATE', 'DELETE'),
    stud_id INT,
    log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DELIMITER $$
	CREATE TRIGGER trg_after_insert_student
	AFTER INSERT ON student_info
	FOR EACH ROW
BEGIN
		INSERT INTO audit_log(action, stud_id)
        VALUES('INSERT', NEW.stud_id);
END $$
DELIMITER ;

DROP TRIGGER trg_after_insert_student;

INSERT INTO student_info
VALUES(21, 121, 'Victor', 'Maths', 95, '7399279208');

SELECT * FROM student_info;
SELECT * FROM audit_log;

INSERT INTO student_info VALUES 
(22, 122, "Aarav", "Science", 88, "9876543210"),
 (23, 123, "Meera", "English", 75, "9812345678"),
 (24, 124, "Rohan", "History", 81, "9823456789"),
 (25, 125, "Sneha", "Biology", 90, "9834567890"),
 (26, 126, "Kabir", "Computer", 95, "9845678901");

-- AFTER Update
DELIMITER $$
	CREATE TRIGGER trg_after_update_student
	AFTER UPDATE ON student_info
	FOR EACH ROW
BEGIN
		INSERT INTO audit_log(action, stud_id)
        VALUES('UPDATE', NEW.stud_id);
END $$
DELIMITER ;

SHOW TRIGGERS;
UPDATE student_info
SET marks = 95
WHERE stud_id = 4;

-- Lets give 2 marks grace for all students on "Physics"?
SET SQL_SAFE_UPDATES = 0;
UPDATE student_info
SET marks = marks + 2
WHERE subject = "Physics";

-- AFTER Delete
DELIMITER $$
	CREATE TRIGGER trg_after_delete_student
	AFTER DELETE ON student_info
	FOR EACH ROW
BEGIN
		INSERT INTO audit_log(action, stud_id)
        VALUES('DELETE', OLD.stud_id);
END $$
DELIMITER ;

DELETE FROM student_info
WHERE stud_id = 26;

SELECT * FROM student_info;
SELECT * FROM audit_log;

-- BEFORE UPDATE ---> Prevent Marks Reduction
DELIMITER $$
	CREATE TRIGGER trg_before_update_no_marks_drop
    BEFORE UPDATE ON student_info
    FOR EACH ROW
BEGIN
		IF NEW.marks < OLD.marks THEN
        SIGNAL SQLSTATE '45000'
        SET message_text = 'Reducing marks are not allowed';
        END IF;
END $$
DELIMITER ;

UPDATE student_info
SET marks = marks - 2
WHERE subject = "Physics";

-- Error Code: 1644. Reducing marks are not allowed

-- BEFORE DELETE
DELIMITER $$
	CREATE TRIGGER trg_before_delete_high_performance
    BEFORE DELETE ON student_info
    FOR EACH ROW
BEGIN 
	IF OLD.marks >= 90 THEN
    SIGNAL SQLSTATE '45000'
    SET message_text = 'Cannot delete high performance students who scored >=90';
    END IF;
END $$
DELIMITER  ;

SHOW TRIGGERS;
DELETE FROM student_info 
WHERE stud_id = 4;

-- Error Code: 1644. Cannot delete high performance students who scored >=90

DELETE FROM student_info 
WHERE stud_id = 24;

-- AFTER UPDATE [ track Marks changes]
CREATE TABLE marks_history(
	history_id INT AUTO_INCREMENT PRIMARY KEY,
    stud_id INT,
    old_marks INT,
    new_marks INT,
    changed_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DELIMITER $$
	CREATE TRIGGER trg_after_update_marks
	AFTER UPDATE ON student_info
	FOR EACH ROW
BEGIN
	IF  OLD.marks <> NEW.marks THEN
        INSERT INTO marks_history(stud_id, old_marks, new_marks)
		VALUE(OLD.stud_id, OLD.marks, NEW.marks);
	END IF;
END $$
DELIMITER ;

SELECT * FROM student_info;
UPDATE student_info
SET marks = 88
WHERE stud_id = 1;

SELECT * FROM marks_history;

USE bike_sales;

SELECT * FROM student_info;

-- Store procedure -> CALL -> UPDATE 
DELIMITER $$
	CREATE PROCEDURE increse_marks_by_id(IN in_stud_id INT, INOUT new_marks INT)
BEGIN
	UPDATE student_info
    SET marks = marks + new_marks
    WHERE stud_id = in_stud_id;
    SELECT marks INTO new_marks
    FROM student_info
    WHERE stud_id = in_stud_id;
END $$
DELIMITER ;

SET @marks = 5;
CALL increse_marks_by_id(7, @marks);
SELECT @marks;

-- TCL and DCL Commands
-- SYNTAX
/* 
GRANT privilege_name
ON object_name
TO { user_name | PUBLIC | role_name}
[WITH GRANT OPTION];
*/

-- TCL [Transaction Control Language]
START TRANSACTION;
DESC Products;
SELECT * FROM Products;
INSERT INTO Products(ProductKey, ProductName, ProductPrice)
VALUES(607, 'Tesla ModelX', 9999.99);
INSERT INTO Products(ProductKey, ProductName, ProductPrice)
VALUES(608, 'Tesla ModelY', 9999.99);
INSERT INTO Products(ProductKey, ProductName, ProductPrice)
VALUES(609, 'Tesla ModelZ', 9999.99);
COMMIT;
ROLLBACK;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Products WHERE ProductKey = 607;
DELETE FROM Products WHERE ProductKey = 608;
DELETE FROM Products WHERE ProductKey = 609;

-- AUTOCOMMIT = 0;
SET AUTOCOMMIT = 0; -- AutoCommit OFF
SET AUTOCOMMIT = 1; -- AutoCommit ON [ BY DEFAULT ]

-- SAVEPOINT
SELECT * FROM Products;
START TRANSACTION;
INSERT INTO Products(ProductKey, ProductName, ProductPrice)
VALUES(607, 'Tesla ModelX', 9999.99);

SAVEPOINT modelX;

INSERT INTO Products(ProductKey, ProductName, ProductPrice)
VALUES(608, 'Tesla ModelY', 9999.99);

SAVEPOINT modelY;

INSERT INTO Products(ProductKey, ProductName, ProductPrice)
VALUES(609, 'Tesla ModelZ', 9999.99);
COMMIT;
ROLLBACK TO SAVEPOINT modelX; -- it removes modelY, modelZ
ROLLBACK TO SAVEPOINT modelY; -- it removes modelZ
ROLLBACK;

-- ACID Properties in TCL
CREATE TABLE bank_transactions(
	txn_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    balance DECIMAL(10,2),
    remarks VARCHAR(200),
    txn_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESC bank_transactions;

INSERT INTO bank_transactions(account_id, balance, remarks) VALUES
(1, 1000.00, 'Opening Balance'),
(2, 2000.00, 'Opening Balance');

SELECT * FROM bank_transactions;

-- ATOMICITY --> ALL OR NOTHING Execution 
START TRANSACTION;

INSERT INTO bank_transactions(account_id, balance, remarks) VALUES
(1, -500.00, 'Debit For Transfer');
SELECT * FROM bank_transactions;


INSERT INTO bank_transactions(account_id, balance, remarks) VALUES
("2", 500.00, 'Credit For Transfer');

COMMIT;
ROLLBACK;

-- to find the current balance
SELECT 	
	account_id,
    SUM(balance) AS remaining_balance
FROM bank_transactions
GROUP BY account_id;


-- Consistency --> Check the remaining amount, still be the same.

START TRANSACTION;
INSERT INTO bank_transactions(account_id, balance, remarks) VALUES
(2, -1500.00, 'Debit For Transfer');

SELECT * FROM bank_transactions;

INSERT INTO bank_transactions(account_id, balance, remarks) VALUES
(1, 1500.00, 'Credit For Transfer');

COMMIT;

-- ISOLATION --> Transaction They don,t interface

START TRANSACTION;
SELECT 	
    SUM(balance) AS remaining_balance
FROM bank_transactions
WHERE account_id = 1;

COMMIT; -- (Don,t commit Yet)

START TRANSACTION; -- [Parallel Transactions]
INSERT INTO bank_transactions(account_id, balance, remarks) VALUES
(1, +200.00, 'Deposit');

-- DURABILITY --> Changes persists after commit 
START TRANSACTION;
INSERT INTO bank_transactions(account_id, balance, remarks) VALUES
(1, -100.00, 'ATM Withdrawl');
COMMIT;
SELECT * FROM bank_transactions;

-- After commit, even your system crashed, once commit can't rollback.

-- Final Stage
SELECT * FROM bank_transactions
ORDER BY txn_time;

SELECT 	
	account_id,
    SUM(balance) AS remaining_balance
FROM bank_transactions
GROUP BY account_id;


-- DCL --> [DATA CONTROL LANGUAGE] 
CREATE DATABASE dcl_demo;
USE dcl_demo;

CREATE TABLE employee_data(
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    salary DECIMAL(10,2)
);

DESC employee_data;

-- # Let's create users
CREATE USER 'report_user'@'localhost' IDENTIFIED BY 'report123';
CREATE USER 'ops_user'@'localhost' IDENTIFIED BY 'ops123';

# Grant some access to the users
GRANT SELECT ON dcl_demo.employee_data TO 'report_user'@'localhost';
GRANT INSERT ON dcl_demo.employee_data TO 'ops_user'@'localhost';

-- "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"
INSERT INTO employee_data
VALUES(1, "Punit", 100000.00);

INSERT INTO employee_data
VALUES(2, "Aman", 100000.00),
(3, "Rahul", 12000.00),
(4, 'Alice', 50000),
  (5, 'Bob', 60000),
  (6, 'Charlie', 55000);
  
  SHOW GRANTS FOR 'report_user'@'localhost';
  SHOW GRANTS FOR 'ops_user'@'localhost';
  
REVOKE SELECT ON dcl_demo.employee_data FROM 'report_user'@'localhost';
REVOKE INSERT ON dcl_demo.employee_data FROM 'ops_user'@'localhost';

GRANT SELECT, INSERT ON dcl_demo.employee_data TO 'ops_user'@'localhost';

CREATE USER 'analyst'@'localhost' IDENTIFIED BY 'analyst123';

GRANT ALL PRIVILEGES ON dcl_demo.employee_data TO 'analyst'@'localhost' WITH GRANT OPTION;



-- PRACTICE FOR CASE Statements
USE Bike_sales;

-- Categorizing the annual income -> by creating a new column income category?

SELECT 
	CustomerKey,
    AnnualIncome,
    CASE
		WHEN AnnualIncome IS NULL THEN 'Not Available'
		WHEN AnnualIncome < 50000 THEN 'Low Income'
        WHEN AnnualIncome BETWEEN 50000 AND 100000 THEN 'Moderate Income'
        ELSE 'High Income'
        END AS IncomeCategory
FROM Customers;

SELECT 
	CustomerKey,
    EducationLevel,
    CASE 	
		WHEN EducationLevel IN ("High School", "Partial High School") THEN "High School"
        WHEN EducationLevel IN ("Partial College", "Bachelors") THEN "Bachelors"
        ELSE 'Graduate Degree'
	END AS NewEducationLevel
FROM Customers;

SELECT 
	TerritoryKey,
    SUM(CASE WHEN OrderQuantity > 2 THEN OrderQuantity ELSE 0 END) AS HighSales,
    SUM(CASE WHEN OrderQuantity BETWEEN 1 AND 2 THEN OrderQuantity ELSE 0 END) AS MediumSales,
    SUM(CASE WHEN OrderQuantity < 1 THEN OrderQuantity ELSE 0 END) AS LowSales
FROM sales2017
GROUP BY TerritoryKey;


SELECT 
	TerritoryKey,
    SUM(CASE WHEN OrderQuantity > 3 THEN OrderQuantity ELSE 0 END) AS HighSales,
    SUM(CASE WHEN OrderQuantity BETWEEN 2 AND 3 THEN OrderQuantity ELSE 0 END) AS MediumSales,
    SUM(CASE WHEN OrderQuantity < 2 THEN OrderQuantity ELSE 0 END) AS LowSales
FROM sales2017
GROUP BY TerritoryKey;


SELECT 
	TerritoryKey,
    SUM(CASE WHEN OrderQuantity > 3 THEN OrderQuantity ELSE 0 END) AS HighSales,
    SUM(CASE WHEN OrderQuantity BETWEEN 2 AND 3 THEN OrderQuantity ELSE 0 END) AS MediumSales,
    SUM(CASE WHEN OrderQuantity < 2 THEN OrderQuantity ELSE 0 END) AS LowSales
FROM sales2017
GROUP BY TerritoryKey;

-- Classify the customers based on how frequently the return product?

SELECT 
	c.CustomerKey,
    c.FullName,
    SUM(coalesce(r.ReturnQuantity, 0)) AS TotalReturns,
    CASE	
		WHEN SUM(coalesce(r.ReturnQuantity, 0)) > 10 THEN 'Frequent Returner'
        WHEN SUM(coalesce(r.ReturnQuantity, 0)) BETWEEN 1 AND 10 THEN 'Moderate Returner'
        ELSE 'Non-Returner'
	END AS ReturnBehavior
FROM Customers c
LEFT JOIN sales2015 s
ON c.Customerkey = s.CustomerKey
LEFT JOIN returns r
ON s.ProductKey = r.ProductKey
GROUP BY 1,2
ORDER BY 3 DESC;

-- show the total returns quantity for each product category break down by region?
SELECT 
	Region,
    SUM(CASE WHEN CategoryName = "Bikes" THEN ReturnQuantity ELSE 0 END) AS BikesReturns,
    SUM(CASE WHEN CategoryName = "Clothing" THEN ReturnQuantity ELSE 0 END) AS ClothingReturns,
    SUM(CASE WHEN CategoryName = "Accessories" THEN ReturnQuantity ELSE 0 END) AS AccessoriesReturns,
    SUM(CASE WHEN CategoryName = "Components" THEN ReturnQuantity ELSE 0 END) AS ComponentsReturns
FROM productcategories pc
JOIN productsubcategories ps
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Products p 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN Returns r 
ON r.ProductKey = p.ProductKey
JOIN territories t 
ON r.TerritoryKey = t.SalesTerritoryKey
GROUP BY 1;

SELECT 
	Region,
    CategoryName,
    SUM(ReturnQuantity) AS TotalReturns,
    CASE 
		WHEN SUM(ReturnQuantity) > 50 THEN 'High Returns'
        WHEN SUM(ReturnQuantity) > 25 THEN 'Moderate Returns'
        ELSE 'Low Returns'
	END AS ReturnCategory
FROM productcategories pc
JOIN productsubcategories ps
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Products p 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN Returns r 
ON r.ProductKey = p.ProductKey
JOIN territories t 
ON r.TerritoryKey = t.SalesTerritoryKey
GROUP BY 1,2;
    

DESC Products;
-- Use of CTE to optimize queries
WITH AvgCostPerSubcategory AS (
	SELECT 	
		ProductSubcategoryKey,
        ROUND(AVG(ProductCost),0) AS AvgCost
	FROM Products 
    GROUP BY 1 
)
SELECT 
	p.ProductKey,
    p.ProductName,
    p.ProductCost,
    ps.AvgCost
FROM Products p 
JOIN AvgCostPerSubcategory ps 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
WHERE p.ProductCost > ps.AvgCost
ORDER BY p.ProductCost DESC;

WITH CategoryReturns AS (
	SELECT 
		CategoryName,
        SUM(ReturnQuantity) AS TotalReturns
	FROM returns r 
    JOIN Products p 
    ON r.ProductKey = p.ProductKey
    JOIN ProductSubcategories ps
    ON p.ProductSubcategoryKey = ps.ProductSubCategoryKey 
    JOIN ProductCategories pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
	GROUP BY 1 
),
CategorySales AS (
	SELECT 
		CategoryName,
        ROUND(SUM(OrderQuantity * ProductPrice),0) AS TotalSales
	FROM sales2017 s
	JOIN Products p 
    ON s.ProductKey = p.ProductKey
    JOIN ProductSubcategories ps
    ON p.ProductSubcategoryKey = ps.ProductSubCategoryKey 
    JOIN ProductCategories pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
	GROUP BY 1 
)
SELECT 
	cr.CategoryName,
    cr.TotalReturns,
    cs.TotalSales
FROM CategoryReturns cr 
JOIN CategorySales cs 
ON cr.CategoryName = cs.CategoryName;


SELECT 
	c.CustomerKey,
    CONCAT(c.FirstName, " ", C.LastName) AS CustomerName,
    SUM(s.OrderQuantity) AS TotalSalesQty
FROM ( 
SELECT * FROM Sales2015
UNION ALL 
SELECT * FROM Sales2016
UNION ALL 
SELECT * FROM Sales2017
) s
JOIN Customers c
ON c.CustomerKey = s.Customerkey
GROUP BY 1,2 
ORDER BY 3 DESC;


-- WITH CTE
WITH AppendSales AS (
SELECT * FROM Sales2015
UNION ALL 
SELECT * FROM Sales2016
UNION ALL 
SELECT * FROM Sales2017
) 
SELECT 
	c.CustomerKey,
    CONCAT(c.FirstName, " ", C.LastName) AS CustomerName,
    SUM(s.OrderQuantity) AS TotalSalesQty
FROM AppendSales s 
JOIN Customers c
ON c.CustomerKey = s.Customerkey
GROUP BY 1,2 
ORDER BY 3 DESC;

SELECT 	
	SubcategoryName,
    ROUND(AVG(ProductCost),0) AS AvgCost
FROM Products p 
JOIN ProductSubcategories ps 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
GROUP BY 1;

-- Subquries 
SELECT SubcategoryName , (
	SELECT 
		ROUND(AVG(ProductCost),0)
	FROM Products p 
    WHERE p.ProductSubcategoryKey = ps.ProductSubcategoryKey
) AS AvgCost
FROM ProductSubcategories ps;

-- find the each region with total return qty?
SELECT 
	Region,
    SUM(ReturnQuantity) AS TotalReturns
FROM territories t 
JOIN Returns r 
ON r.TerritoryKey = t.SalesTerritoryKey
GROUP BY 1
ORDER BY TotalReturns DESC;

-- WITH subqueries 
SELECT Region ,(
	SELECT 
        SUM(ReturnQuantity)
	FROM Returns r 
    WHERE r.TerritoryKey = t.SalesTerritoryKey
) AS TotalReturns
FROM territories t 
ORDER BY TotalReturns DESC;

-- List 10 top customers by its totalRevenue?
SELECT 
	p.ProductKey,
    p.ProductName,
    sub.TotalRevenue
FROM Products p ,(
	SELECT 
		s.ProductKey,
        ROUND(SUM(s.OrderQuantity * p.ProductPrice),0) AS TotalRevenue
	FROM Sales2017 s
    JOIN Products p 
    ON s.ProductKey = p.ProductKey
    GROUP BY ProductKey
) sub
WHERE sub.ProductKey = p.ProductKey
ORDER BY sub.TotalRevenue DESC
LIMIT 10;

-- Find the products that are returned more then 50 times?
SELECT 
	ProductName,
    ModelName,
    ProductPrice
FROM Products p 
WHERE ( 
   SELECT 
		SUM(ReturnQuantity) AS TotalReturns
	FROM returns r
    WHERE r.ProductKey = p.ProductKey
) > 50 ;

-- find the products whose productprice > avgprice within the subcategory
SELECT 
	ProductName,
    ModelName,
    ProductPrice
FROM Products p 
WHERE ProductPrice > (
		SELECT 
			Avg(ProductPrice) AS AvgPrice
		FROM Products p2
        WHERE p.ProductSubcategoryKey = p2.ProductSubcategoryKey
);
 
-- find the products which are returned more than average return qty?
SELECT 
	p.ProductName,
    SUM(r.ReturnQuantity) AS total_return_qty
FROM Products p 
JOIN returns r 
ON p.ProductKey = r.ProductKey 
GROUP BY 1 
HAVING SUM(r.ReturnQuantity) > (
			SELECT 
				AVG(total_return_qty) 
			FROM (
				SELECT 
					SUM(ReturnQuantity) AS total_return_qty
				FROM returns
                GROUP BY ProductKey
                ) sub
);

-- find the region with their return quantity using subquery in join clause?
SELECT 
	t.Region,
    sub.total_return_quantity
FROM territories t 
JOIN (
	SELECT 
		r.TerritoryKey,
        SUM(r.ReturnQuantity) AS total_return_quantity
	FROM returns r 
    GROUP BY r.TerritoryKey
) sub
ON t.SalesTerritoryKey = sub.TerritoryKey
ORDER BY sub.total_return_quantity DESC;


WITH TotalReturnQty AS (
		SELECT 
		r.TerritoryKey,
        SUM(r.ReturnQuantity) AS total_return_quantity
	FROM returns r 
    GROUP BY r.TerritoryKey
)
SELECT 
	Region,
    total_return_quantity
FROM territories t 
JOIN TotalReturnQty r
ON t.SalesTerritoryKey = r.TerritoryKey
ORDER BY total_return_quantity DESC; 

-- Correlated subqueries

-- products that are returned more than the average return qty in their subcategory?
SELECT 
	p.ProductKey,
    P.ProductName,
    r.ReturnQuantity
FROM Products p 
JOIN Returns r 
ON p.ProductKey = r.ProductKey 
WHERE r.ReturnQuantity > (
		SELECT 
			AVG(r2.ReturnQuantity)
		FROM Returns r2
        JOIN Products p2
        ON r2.ProductKey = p2.ProductKey 
        WHERE p2.ProductSubcategoryKey = p.ProductSubcategoryKey
) 
ORDER BY r.ReturnQuantity DESC;
 
 USE bike_sales;
 DESC Calendar;
DESC returns;
DESC sales2015;

-- Window function
DESC sales;
SELECT * FROM sales;

SELECT 
	*,
    SUM(SaleAmount) OVER(partition by SalesPerson order by SaleDate) AS cumalativeSalesPerPerson
FROM sales;

SELECT 
	SalesPerson,
    SUM(SaleAmount) AS totalSales
FROM sales
Group by SalesPerson;

-- 3 days moving average
SELECT 
	*,
    AVG(SaleAmount) OVER(ORDER BY SaleDate 
    ROWS BETWEEN 1 preceding AND 1 following
) AS MovingAverage
FROM Sales;

 -- 5 days moving average
 SELECT 
	*,
    AVG(SaleAmount) OVER(ORDER BY SaleDate 
    ROWS BETWEEN 2 preceding AND 2 following
) AS MovingAverage
FROM Sales;

SELECT 
	CustomerKey,
    FullName,
    AnnualIncome,
    AnnualIncome - AVG(AnnualIncome) OVER() AS income_diff_from_avg
FROM Customers;

SELECT AVG(AnnualIncome) FROM Customers;

SELECT 
	Prefix,
    FullName,
    AnnualIncome,
    MAX(AnnualIncome) OVER (partition by Prefix) AS max_income_by_prefix
FROM Customers
WHERE Prefix IS NOT NULL;

SELECT 
	CustomerKey,
    FullName,
    Gender,
    AnnualIncome,
    MAX(AnnualIncome) OVER (partition by Gender) AS max_income_by_gender
FROM Customers;

SELECT 
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
    CASE
		WHEN ProductCost = MAX(ProductCost) OVER(PARTITION BY ProductSubcategoryKey) THEN 'Highest'
        WHEN ProductCost = MIN(ProductCost) OVER(PARTITION BY ProductSubcategoryKey) THEN 'Lowest'
        ELSE 'Middle'
	END AS CostCategory
FROM Products;

SELECT 
	CustomerKey,
    Gender,
    FullName,
    AnnualIncome,
    RANK() OVER (PARTITION BY Gender ORDER BY AnnualIncome DESC) AS Income_rank
FROM Customers;

SELECT 
	CustomerKey,
    FullName,
    MaritalStatus,
    DateOfBirth,
    RANK() OVER (PARTITION BY MaritalStatus ORDER BY DateofBirth) AS rank_by_birthdate
FROM Customers;

SELECT
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
    RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) AS ProductRank,
    CASE 
		WHEN RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) = 1 THEN 'Top Rank'
        WHEN RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) <= 5 THEN 'Medium Rank'
        ELSE 'Bottom Rank'
	END AS CostCategory
FROM Products;

-- optimal with Cte 
WITH ProductRanking AS (
SELECT
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
    RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) AS ProductRank
FROM Products
)
SELECT 
	*,
     CASE 
		WHEN ProductRank = 1 THEN 'Top Rank'
        WHEN ProductRank <= 5 THEN 'Medium Rank'
        ELSE 'Bottom Rank'
	END AS CostCategory
FROM ProductRanking;

-- Dense Rank
SELECT 
	CustomerKey,
    Gender,
    FullName,
    AnnualIncome,
    DENSE_RANK() OVER( PARTITION BY Gender ORDER BY AnnualIncome DESC) AS Income_rank
FROM Customers;


WITH ProductRanking AS (
SELECT
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
    DENSE_RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) AS ProductRank
FROM Products
)
SELECT 
	*,
     CASE 
		WHEN ProductRank = 1 THEN 'Top Rank'
        WHEN ProductRank <= 5 THEN 'Medium Rank'
        ELSE 'Bottom Rank'
	END AS CostCategory
FROM ProductRanking;

-- Row Number()
SELECT 
	CustomerKey,
    Gender,
    FullName,
    AnnualIncome,
    row_number() OVER( PARTITION BY Gender ORDER BY AnnualIncome DESC) AS Income_rank
FROM Customers;

SELECT 
	SaleID,
    SalesPerson,
    SaleAmount,
    SaleDate,
    LAG(SaleAmount) OVER(PARTITION BY SalesPerson ORDER BY SaleDate) AS PreviousSales,
    LEAD(SaleAmount) OVER( PARTITION BY SalesPerson Order BY SaleDate) AS NextSales
FROM sales;

SELECT
	DATE_FORMAT(s.OrderDate, '%Y-%m') AS year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue,
    LAG(ROUND(SUM(p.ProductPrice * s.OrderQuantity),0)) 
    OVER( ORDER BY DATE_FORMAT(s.OrderDate, '%Y-%m')) AS PreviousMonthSales,
    LEAD(ROUND(SUM(p.ProductPrice * s.OrderQuantity),0)) 
    OVER( ORDER BY DATE_FORMAT(s.OrderDate, '%Y-%m')) AS NextMonthSales
FROM Sales2015 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY DATE_FORMAT(s.OrderDate, '%Y-%m')
ORDER BY year_and_month;

-- with cte's
WITH UnderstandingRevenue AS (
	SELECT
		DATE_FORMAT(s.OrderDate, '%Y-%m') AS year_and_month,
		ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM Sales2015 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY year_and_month
ORDER BY year_and_month
)
SELECT 
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER (ORDER BY year_and_month) AS PreviousMonthSales,
    LEAD(TotalRevenue) OVER (ORDER BY year_and_month) AS NextMonthSales
FROM UnderstandingRevenue;


USE bike_sales;

WITH UnderstandingRevenue AS (
	SELECT
		DATE_FORMAT(s.OrderDate, '%Y-%m') AS year_and_month,
		ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM Sales2015 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY year_and_month
ORDER BY year_and_month
)
SELECT 
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER (ORDER BY year_and_month) AS PreviousMonthSales,
    LEAD(TotalRevenue) OVER (ORDER BY year_and_month) AS NextMonthSales,
    TotalRevenue - LAG(TotalRevenue) Over(Order BY year_and_month) AS SalesAmountChange,
    CASE
		WHEN TotalRevenue > LAG(TotalRevenue) Over(Order BY year_and_month) THEN 'Increse'
        WHEN TotalRevenue < LAG(TotalRevenue) Over(Order BY year_and_month) THEN 'Decrese'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;

WITH AllSales AS (
		SELECT * FROM sales2015
        UNION ALL
        SELECT * FROM sales2016
        UNION ALL 
        SELECT * FROM sales2017
),
UnderstandingRevenue AS (
	SELECT
		YEAR(s.OrderDate) AS year_part,
		ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM AllSales s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY year_part
ORDER BY year_part
)
SELECT 
	year_part,
    TotalRevenue,
    LAG(TotalRevenue) OVER (ORDER BY year_part) AS PreviousYearSales,
    LEAD(TotalRevenue) OVER (ORDER BY year_part) AS NextYearSales,
    TotalRevenue - LAG(TotalRevenue) Over(Order BY year_part) AS SalesAmountChange,
    CASE
		WHEN TotalRevenue > LAG(TotalRevenue) Over(Order BY year_part) THEN 'Increse'
        WHEN TotalRevenue < LAG(TotalRevenue) Over(Order BY year_part) THEN 'Decrese'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;


WITH AllSales AS (
		SELECT * FROM sales2015
        UNION ALL
        SELECT * FROM sales2016
        UNION ALL 
        SELECT * FROM sales2017
),
UnderstandingRevenue AS (
	SELECT
		YEAR(s.OrderDate) AS year_part,
		ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM AllSales s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY year_part
ORDER BY year_part
)
SELECT 
	year_part,
    TotalRevenue,
    LAG(TotalRevenue) OVER (ORDER BY year_part) AS PreviousYearSales,
    LEAD(TotalRevenue) OVER (ORDER BY year_part) AS NextYearSales,
    CONCAT(ROUND(((TotalRevenue - LAG(TotalRevenue) Over(Order BY year_part)) /
    LAG(TotalRevenue) OVER (ORDER BY year_part)) * 100, 0), '%') AS SalesAmountChangeInPercentage,
    CASE
		WHEN TotalRevenue > LAG(TotalRevenue) Over(Order BY year_part) THEN 'Increse'
        WHEN TotalRevenue < LAG(TotalRevenue) Over(Order BY year_part) THEN 'Decrese'
        ELSE 'No Change'
	END AS SalesTrend
FROM UnderstandingRevenue;


SELECT 
	ProductName,
    ProductPrice,
    NTILE(4) OVER (ORDER BY ProductPrice DESC) AS Price_quartile
FROM PRoducts;



WITH MonthlySales AS (
	SELECT
		DATE_FORMAT(s.OrderDate, "%Y-%m") AS year_and_month,
		ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM Sales2017 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY year_and_month
ORDER BY year_and_month
)
SELECT 
	year_and_month,
    TotalRevenue,
    NTILE(3) OVER (ORDER BY TotalRevenue) AS Sales_tercile 
FROM MonthlySales;


WITH MonthlySales AS (
	SELECT
		DATE_FORMAT(s.OrderDate, "%Y-%m") AS year_and_month,
		ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
FROM (
		SELECT * FROM sales2015
        UNION ALL 
        SELECT * FROM sales2016
        UNION ALL
        SELECT * FROM sales2017
        ) s
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY year_and_month
ORDER BY year_and_month
)
SELECT 
	year_and_month,
    TotalRevenue,
    NTILE(3) OVER (ORDER BY TotalRevenue) AS Sales_tercile 
FROM MonthlySales;


-- outliers 
WITH Product_stats AS (
	SELECT 
		ProductPrice,
        NTILE(4) OVER (ORDER BY ProductPrice) AS Price_quartile
	FROM Products
),
quartiles AS (
	SELECT 
		MAX(CASE WHEN price_quartile = 1 THEN ProductPrice END) AS Q1,
        MAX(CASE WHEN price_quartile = 3 THEN ProductPrice END) AS Q3
	FROM Product_stats
),
iqr_bound AS (
		SELECT 
			Q1,
            Q3,
            Q3 - Q1 AS IQR,
            Q1 - (1.5 * (Q3-Q1)) AS Lower_bound,
            Q3 + (1.5 * (Q3-Q1)) AS upper_bound
		FROM quartiles
)
SELECT 
	p.ProductKey,
    p.ProductName,
    p.ProductPrice
FROM Products p
JOIN iqr_bound iqb
ON ProductPrice BETWEEN iqb.Lower_bound AND iqb.upper_bound
ORDER BY ProductPrice;

WITH Product_stats AS (
	SELECT 
		ProductPrice,
        NTILE(4) OVER (ORDER BY ProductPrice) AS Price_quartile
	FROM Products
),
quartiles AS (
	SELECT 
		MAX(CASE WHEN price_quartile = 1 THEN ProductPrice END) AS Q1,
        MAX(CASE WHEN price_quartile = 3 THEN ProductPrice END) AS Q3
	FROM Product_stats
),
iqr_bound AS (
		SELECT 
			Q1,
            Q3,
            Q3 - Q1 AS IQR,
            Q1 - (1.5 * (Q3-Q1)) AS Lower_bound,
            Q3 + (1.5 * (Q3-Q1)) AS upper_bound
		FROM quartiles
)
SELECT 
	p.ProductKey,
    p.ProductName,
    p.ProductPrice
FROM Products p
JOIN iqr_bound iqb
ON p.ProductPrice < iqb.Lower_bound OR p.ProductPrice > iqb.upper_bound
ORDER BY ProductPrice;

SELECT 
	s.ProductKey,
    c.FullName,
    s.OrderDate,
    FIRST_VALUE(c.FullName) OVER (PARTITION BY s.ProductKey ORDER BY s.OrderDate) AS First_purchase
FROM sales2017 s
JOIN Customers c 
ON c.CustomerKey = s.CustomerKey
ORDER BY ProductKey;


SELECT 
	s.ProductKey,
    t.Region,
    s.OrderDate,
    LAST_VALUE(t.Region) OVER (PARTITION BY s.ProductKey ORDER BY s.OrderDate 
    RANGE BETWEEN unbounded preceding AND unbounded following ) AS last_region_product_sold
FROM sales2017 s
JOIN territories t  
ON t.SalesTerritoryKey  = s.TerritoryKey
ORDER BY ProductKey;


SELECT 
	s.ProductKey,
    c.FullName,
    s.OrderDate,
    NTH_VALUE(c.FullName, 5) OVER (PARTITION BY s.ProductKey ORDER BY s.OrderDate) AS Fifth_purchase
FROM sales2017 s
JOIN Customers c 
ON c.CustomerKey = s.CustomerKey
ORDER BY ProductKey;
SELECT 
	s.ProductKey,
    c.FullName,
    s.OrderDate,
    NTH_VALUE(c.FullName, 5) OVER (PARTITION BY s.ProductKey ORDER BY s.OrderDate
    RANGE BETWEEN unbounded preceding AND unbounded following) AS Fifth_purchase
FROM sales2017 s
JOIN Customers c 
ON c.CustomerKey = s.CustomerKey
ORDER BY ProductKey;

WITH subcategory_orders AS ( 
		SELECT 	
			s.CustomerKey,
            p.ProductSubcategoryKey,
            s.OrderDate,
			LAG(s.OrderDate) OVER (PARTITION BY s.CustomerKey, p.ProductSubcategoryKey ORDER BY s.OrderDate) AS PrevOrderDate
		FROM Products p 
        JOIN sales2017 s
        ON p.ProductKey = s.ProductKey
)
SELECT 
	Customerkey,
    ProductSubcategoryKey,
    ROUND(AVG(DATEDIFF(OrderDate , PrevOrderDate)),0) AS AvgOrderDays
FROM subcategory_orders
WHERE PrevOrderDate IS NOT NULL 
GROUP BY Customerkey, ProductSubcategoryKey
HAVING COUNT(*) >1;

WITH stock_changes AS (
	SELECT 
		ProductKey,
        StockDate,
        LEAD(StockDate) OVER (PARTITION BY ProductKey ORDER BY StockDate) AS NextStockDate
	FROM sales2017
)
SELECT 
	ProductKey,
    MAX(DATEDIFF(NextStockDate, StockDate)) AS days_out_of_stock
FROM stock_changes
WHERE NextStockDate IS NOT NULL
GROUP BY ProductKey
ORDER BY days_out_of_stock DESC;

WITH Yearly_sales AS (
	SELECT 
		YEAR(s.OrderDate) AS Year_part,
        SUM(s.OrderQuantity * p.ProductPrice) AS TotalRevenue
	FROM ( 
		SELECT * FROM sales2015
        UNION ALL
        SELECT * FROM sales2016
        UNION ALL 
        SELECT * FROM sales2017
	) AS s 
    JOIN Products p 
    ON p.ProductKey = s.ProductKey
    GROUP BY YEAR(s.OrderDate)
),
SalesTrend AS (
	SELECT 
		year_part,
        TotalRevenue,
        LAG(TotalRevenue) OVER ( order by year_part) AS PrevRevenue
	FROM Yearly_sales
)
SELECT 
	year_part,
    TotalRevenue,
    ROUND((TotalRevenue - PrevRevenue) /PrevRevenue * 100.0, 2) AS RevenueChangePercentage
FROM SalesTrend
WHERE PrevRevenue IS NOT NULL;
 
USE bike_sales;

SELECT * FROM Customers WHERE CustomerKey = 13061;

SHOW INDEXES FROM Customers; 

CREATE INDEX idx_customerKey ON Customers(CustomerKey);

DROP INDEX idx_customerKey ON Customers;

  
use bike_sales;
CREATE TABLE Customer (
	Customer_id INT NOT NULL,
    Customer_name VARCHAR(100) NOT NULL,
    age INT
);

ALTER TABLE Orders
DROP constraint fk_customer_id;
DROP TABLE Customer;

insert into Customer(Customer_id, age)
values (123,29);

Alter table Customer
modify column Customer_name VARCHAR(100) DEFAULT 'NA';

desc customer;

select * from customer;

Alter table Customer
Add primary key(Customer_id);

DESC orders; 
ALTER TABLE Customer
ADD COLUMN EmailAddress VARCHAR(50) AFTER Customer_id,
ADD COLUMN Phone_number BIGINT;

ALTER TABLE Customer
ADD constraint UNIQUE(EmailAddress);


SELECT 
	p.ProductName,
    SUM(r.ReturnQuantity) AS TotalReturns
FROM Products AS p
JOIN Returns AS r
ON p.ProductKey = r.ProductKey
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

SELECT 
	p.ProductKey,
    p.ProductName,
    SUM(r.ReturnQuantity) AS TotalReturns
FROM Products AS p
JOIN Returns AS r
ON p.ProductKey = r.ProductKey
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;

SELECT
	p.ProductName,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalSales,
    SUM(r.ReturnQuantity) AS TotalReturns,
    SUM(s.OrderQuantity) AS QuantitySold
FROM Products p 
JOIN sales2016 s 
ON p.ProductKey = s.ProductKey
JOIN Returns r 
ON p.ProductKey = r.ProductKey
GROUP BY 1;
 
SELECT 
	CategoryName,
    SUM(r.ReturnQuantity) AS TotalReturns
FROM productcategories pc
JOIN productsubcategories ps
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Products p 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN returns r 
ON p.ProductKey = r.ProductKey
GROUP BY 1;

SELECT 
	pc.CategoryName,
    ps.SubcategoryName,
    SUM(r.ReturnQuantity) AS TotalReturns
FROM productcategories pc
JOIN productsubcategories ps
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Products p 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN returns r 
ON p.ProductKey = r.ProductKey
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 10;

SELECT 
	SalesTerritoryKey,
    region,
    country,
    SUM(ReturnQuantity) AS TotalReturns
FROM territories t 
JOIN Returns r 
ON t.SalesTerritoryKey = r.TerritoryKey
GROUP BY 1,2,3
HAVING TotalReturns > 200;

SELECT 
	pc.CategoryName,
    ROUND(SUM(p.ProductCost * s.OrderQuantity),0) AS TotalExpenses,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalSales,
    ROUND((SUM(p.ProductPrice * s.OrderQuantity) - SUM(p.ProductCost * s.OrderQuantity)),0) AS TotalProfit
FROM  ( 
		SELECT * FROM sales2015
        UNION ALL
        SELECT * FROM sales2016
        UNION ALL 
        SELECT * FROM sales2017
	) AS s 
JOIN Products p 
ON p.ProductKey = s.ProductKey
JOIN productsubcategories ps
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
JOIN productcategories pc
ON pc.ProductCategoryKey = ps.ProductCategoryKey
GROUP BY 1;

SELECT 
	pc.CategoryName,
    ROUND(SUM(p.ProductCost * s.OrderQuantity),0) AS TotalExpenses,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalSales,
    ROUND((SUM(p.ProductPrice * s.OrderQuantity) - SUM(p.ProductCost * s.OrderQuantity)),0) AS TotalProfit,
    SUM(r.ReturnQuantity) AS TotalReturns
FROM( 
		SELECT * FROM sales2015
        UNION ALL
        SELECT * FROM sales2016
        UNION ALL 
        SELECT * FROM sales2017
	) AS s 
JOIN Products p 
ON p.ProductKey = s.ProductKey
JOIN productsubcategories ps
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
JOIN productcategories pc
ON pc.ProductCategoryKey = ps.ProductCategoryKey
JOIN Returns r 
ON p.ProductKey = r.ProductKey
GROUP BY pc.CategoryName;


SELECT 
	TerritoryKey,
    SUM(CASE WHEN OrderQuantity > 2 THEN OrderQuantity ELSE 0 END ) AS HighSales,
    SUM(CASE WHEN OrderQuantity BETWEEN 1 AND 2 THEN OrderQuantity ELSE 0 END ) AS MediumSales,
    SUM(CASE WHEN OrderQuantity < 1 THEN OrderQuantity ELSE 0 END ) AS LowSales
FROM sales2016
GROUP BY 1;
    
SELECT
	Region,
    SUM(CASE WHEN CategoryName = "Bikes" THEN returnQuantity ELSE 0 END) AS BikeReturns,
    SUM(CASE WHEN CategoryName = "Clothing" THEN returnQuantity ELSE 0 END) AS ClothingReturns,
	SUM(CASE WHEN CategoryName = "Accessories" THEN returnQuantity ELSE 0 END) AS AccessoriesReturns,
    SUM(CASE WHEN CategoryName = "Components" THEN returnQuantity ELSE 0 END) AS ComponentsReturns
FROM productcategories pc
JOIN productsubcategories ps
ON ps.ProductCategoryKey = pc.ProductCategoryKey
JOIN Products p 
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
JOIN Returns r 
ON p.ProductKey = r.ProductKey
JOIN Territories t 
ON r.TerritoryKey = t.SalesTerritoryKey
GROUP BY 1;

WITH AvgCostPerSubcategory AS (
	SELECT 
		ProductSubcategoryKey,
        ROUND(AVG(ProductCost),0) AS AvgCost
	FROM Products
    group by 1
)
SELECT
	p.ProductKey,
    p.ProductName,
    p.ProductCost,
    ps.AvgCost
FROM Products p 
JOIN AvgCostPerSubcategory ps
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
WHERE p.ProductCost > AvgCost 
ORDER BY p.ProductCost DESC;

SELECT 
	CategoryName,
    SUM(ReturnQuantity) AS TotalReturns
FROM Returns r 
JOIN Products p 
ON p.ProductKey = r.ProductKey 
JOIN productsubcategories ps 
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
JOIN productcategories pc
ON pc.ProductCategoryKey = ps.ProductCategoryKey
GROUP BY 1;

SELECT 
	CategoryName,
    ROUND(SUM(OrderQuantity * ProductPrice),0) AS TotalSales
FROM sales2017 s
JOIN Products p 
ON p.ProductKey = s.ProductKey
JOIN productsubcategories ps 
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
JOIN productcategories pc
ON pc.ProductCategoryKey = ps.ProductCategoryKey
GROUP BY 1;

WITH CategoryReturns AS (
	SELECT 
		CategoryName,
		SUM(ReturnQuantity) AS TotalReturns
	FROM Returns r 
	JOIN Products p 
	ON p.ProductKey = r.ProductKey 
	JOIN productsubcategories ps 
	ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	JOIN productcategories pc
	ON pc.ProductCategoryKey = ps.ProductCategoryKey
	GROUP BY 1
),
CategorySales AS (
	SELECT 
		CategoryName,
		ROUND(SUM(OrderQuantity * ProductPrice),0) AS TotalSales
	FROM sales2017 s
	JOIN Products p 
	ON p.ProductKey = s.ProductKey
	JOIN productsubcategories ps 
	ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	JOIN productcategories pc
	ON pc.ProductCategoryKey = ps.ProductCategoryKey
	GROUP BY 1
)
SELECT 
	cr.CategoryName,
    cr.TotalReturns,
    cs.TotalSales
FROM CategoryReturns cr 
JOIN CategorySales cs
ON cr.CategoryName = cs.CategoryName;

SELECT
	c.CustomerKey,
    CONCAT(c.FirstName, " ", c.LastName) AS CustomerName,
    SUM(s.OrderQuantity) AS TotalSalesQty
FROM ( 
		SELECT * FROM sales2015
        UNION ALL
        SELECT * FROM sales2016
        UNION ALL 
        SELECT * FROM sales2017
	) AS s 
JOIN Customers c
ON c.CustomerKey = s.CustomerKey
GROUP BY 1,2 
ORDER BY 3 DESC
LIMIT 5;

WITH AppendSales AS (
		SELECT * FROM sales2015
        UNION ALL
        SELECT * FROM sales2016
        UNION ALL 
        SELECT * FROM sales2017
)
SELECT 
	c.CustomerKey,
    CONCAT(c.FirstName, " ", c.LastName) AS CustomerName,
    SUM(s.OrderQuantity) AS TotalSalesQty
FROM Customers c 
JOIN AppendSales s 
ON s.CustomerKey = c.CustomerKey
GROUP BY 1,2 
ORDER BY 3 DESC
LIMIT 5;

-- Subquery 
-- 1. SELECT 

SELECT 
	SubcategoryName,
    ROUND(AVG(ProductCost),0) AS AvgCost
FROM Products p 
JOIN productsubcategories ps
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
GROUP BY 1;

SELECT 
	SubcategoryName, (
		SELECT 
			ROUND(AVG(ProductCost),0)
		FROM Products p 
        WHERE ps.ProductSubcategoryKey = p.ProductSubcategoryKey
) AS AvgCost
FROM productsubcategories ps;

SELECT 
	Region, (
		SELECT 
			SUM(ReturnQuantity)
		FROM Returns r 
        WHERE r.TerritoryKey = t.SalesTerritoryKey
	) AS TotalReturns
FROM territories t;



SELECT 
	Region, (
		SELECT 
			SUM(OrderQuantity) 
		FROM sales2015 s
        WHERE s.TerritoryKey = t.SalesTerritoryKey
	) AS TotalSalesQty
FROM territories t
ORDER BY TotalSalesQty DESC;

SELECT 
	p.ProductKey,
    p.ProductName,
    sub.TotalRevenue
FROM Products p ,
(
	SELECT 
		s.ProductKey,
        ROUND(SUM(s.OrderQuantity * p.ProductPrice),0) AS TotalRevenue
	FROM sales2017 s
    JOIN Products p 
    ON p.ProductKey = s.ProductKey
    GROUP BY s.ProductKey
) sub
WHERE p.ProductKey = sub.ProductKey
ORDER BY sub.TotalRevenue DESC 
LIMIT 10;

SELECT 
	ProductName,
    ModelName,
    ProductPrice
FROM Products p 
WHERE (
		SELECT 
			SUM(ReturnQuantity)
		FROM Returns r 
        WHERE r.ProductKey = p.ProductKey
	) > 50;

USE bike_sales;

SELECT 
	p.ProductKey,
    p.ProductName,
    r.ReturnQuantity
FROM Products p 
JOIN returns r 
ON r.ProductKey = p.ProductKey
WHERE r.ReturnQuantity > (
		SELECT 
			AVG(r2.ReturnQuantity) 
		FROM Returns r2 
        JOIN Products P2
        ON p2.ProductKey = r2.ProductKey
        WHERE p2.ProductSubcategoryKey = p.ProductSubcategoryKey
)
ORDER BY r.ReturnQuantity DESC;

SELECT CURRENT_TIME();

SELECT CURRENT_DATE();
DESC events;
SELECT * FROM events;

SELECT CURRENT_TIMESTAMP();
SELECT NOW();

SELECT
	DATE_ADD( 
		DATE_ADD('2026-10-22', INTERVAL 1 MONTH),
		INTERVAL 10 day
) AS ChainingofDate; 

SELECT COUNT(*) FROM Returns;
DESC RETURNS;

DESC sales;
DESC sales1;

SELECT 
	*,
    SUM(saleAmount) OVER (partition by SalesPerson ORDER BY SaleDate) AS CumulativeSales
FROM Sales;

SELECT 
	*,
    RANK() OVER(ORDER BY SaleAmount DESC) AS SalesRank
FROM Sales;

SELECT 
	*,
    DENSE_RANK() OVER (ORDER BY SaleAmount DESC ) AS SalesRank
FROM Sales;

WITH SaleRank AS (
	SELECT 
		SaleID,
        Salesperson,
        SaleAmount,
        DENSE_RANK() OVER( ORDER BY SaleAmount DESC ) AS rnk
	FROM Sales
)
SELECT 
	SaleID,
	Salesperson,
	SaleAmount
FROM SaleRank 
WHERE rnk = 2;

SELECT 
	MAX(SaleAmount) AS SecondHighestSale
FROM Sales
WHERE SaleAmount < (
	SELECT 
		MAX(SaleAmount) 
	FROM Sales
);

SELECT 
	SaleID,
	Salesperson,
	SaleAmount
FROM Sales
WHERE SaleAmount = (
	SELECT 
		MAX(SaleAmount) 
	FROM Sales
    WHERE SaleAmount < (
		SELECT 
			MAX(SaleAmount)
		FROM Sales
)
    );

SELECT 
	*,
    AVG(SaleAmount) OVER (ORDER BY SaleDate 
    ROWS BETWEEN 1 preceding AND 1 following
	) AS MovingAverage
FROM Sales;

SELECT 
	*,
    AVG(SaleAmount) OVER (ORDER BY SaleDate 
    ROWS BETWEEN 2 preceding AND 2 following
	) AS MovingAverage
FROM Sales;

SELECT AVG(AnnualIncome) FROM customers;

SELECT 
	CustomerKey,
    FullName,
    AnnualIncome,
    AnnualIncome - AVG(AnnualIncome) OVER() AS Income_difference_from_avg
FROM Customers;

SELECT 
	CustomerKey,
    Prefix,
    FullName,
    AnnualIncome,
    MAX(AnnualIncome) OVER(PARTITION BY Prefix) AS max_income_by_Prefix
FROM Customers
WHERE Prefix IS NOT NULL;

SELECT 
	CustomerKey,
    Prefix,
    FullName,
    Gender,
    AnnualIncome,
    MAX(AnnualIncome) OVER(PARTITION BY Gender) AS max_income_by_gender
FROM Customers;

SELECT 
	MAX(AnnualIncome) 
FROM Customers
WHERE Gender LIKE 'NA';

SELECT 
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
    CASE
		WHEN ProductCost = MAX(ProductCost) OVER(PARTITION BY ProductSubcategoryKey) THEN 'Highest'
        WHEN ProductCost = MIN(ProductCost) OVER(PARTITION BY ProductSubcategoryKey) THEN 'Lowest'
        ELSE 'Middle'
    END AS CostCategory
FROM Products;

SELECT 
	CustomerKey,
    FullName,
    Gender,
    AnnualIncome,
    RANK() OVER(PARTITION BY Gender ORDER BY AnnualIncome DESC) AS Income_rank
FROM Customers;

SELECT 
	CustomerKey,
    FullName,
    MaritalStatus,
    DateOfBirth,
    AnnualIncome,
    RANK() OVER(PARTITION BY MaritalStatus ORDER BY DateOfBirth) AS rank_by_birthdate
FROM Customers;

SELECT 
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
	RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) AS ProductRank,
	CASE 
		WHEN RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) = 1 THEN 'Top Rank'
        WHEN RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) <= 5 THEN 'Medium Rank'
        ELSE 'Bottom Rank'
    END AS CostCategory
FROM Products;

WITH ProductRanking AS (
	SELECT
		ProductSubcategoryKey,
		ProductName,
		ProductCost,
		RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) AS ProductRank
    FROM Products
)
SELECT 
	*,
    CASE 
		WHEN ProductRank = 1 THEN 'Top Rank'
        WHEN ProductRank <= 5 THEN 'Medium Rank'
        ELSE 'Bottom Rank'
    END AS CostCategory
FROM ProductRanking;

WITH RankingProduct AS (
SELECT 
	ProductSubcategoryKey,
    ProductName,
    ProductCost,
    DENSE_RANK() OVER(PARTITION BY ProductSubcategoryKey ORDER BY ProductCost DESC) AS ProductRank
FROM Products
)
SELECT 
	*,
    CASE 
		WHEN  ProductRank = 1 THEN 'Top Rank'
        WHEN ProductRank <= 3 THEN 'Medium Rank'
        ELSE 'Bottom Rank'
    END AS CostCategory
FROM RankingProduct;

SELECT 
	Customerkey,
    Gender,
    FullName,
    AnnualIncome,
    ROW_NUMBER() OVER(PARTITION BY Gender ORDER BY AnnualIncome DESC) AS income_rank
FROM Customers;
    
SELECT 
	SaleID,
    Salesperson,
    SaleAmount,
    SaleDate,
    LAG(SaleAmount) OVER(PARTITION BY Salesperson ORDER BY SaleDate) AS PreviousSale,
    LEAD(SaleAmount) OVER(PARTITION BY Salesperson ORDER BY SaleDate) AS NextSale
FROM sales;

SELECT 
	DATE_FORMAT(s.OrderDate, '%Y-%m') AS Year_and_month,
    ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue,
    LAG(ROUND(SUM(p.ProductPrice * s.OrderQuantity),0)) 
    OVER(ORDER BY DATE_FORMAT(s.OrderDate, '%Y-%m')) AS PreviousMonthSales,
    LEAD(ROUND(SUM(p.ProductPrice * s.OrderQuantity),0)) 
    OVER(ORDER BY DATE_FORMAT(s.OrderDate, '%Y-%m')) AS NextMonthSales
FROM sales2015 s 
JOIN Products p 
ON p.ProductKey = s.ProductKey
GROUP BY DATE_FORMAT(s.OrderDate, '%Y-%m')
ORDER BY Year_and_month;

WITH Understanding_revenue AS (
		SELECT 
			DATE_FORMAT(s.OrderDate, '%Y-%m') AS Year_and_month,
			ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
		FROM sales2015 s 
		JOIN Products p 
		ON p.ProductKey = s.ProductKey
		GROUP BY Year_and_month
		ORDER BY Year_and_month
)
SELECT 
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER(ORDER BY Year_and_month) AS PreviousMonthRevenue,
    LEAD(TotalRevenue) OVER(ORDER BY Year_and_month) AS NextMonthRevenue
FROM Understanding_revenue;




WITH Understanding_revenue AS (
		SELECT 
			DATE_FORMAT(s.OrderDate, '%Y-%m') AS Year_and_month,
			ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
		FROM sales2015 s 
		JOIN Products p 
		ON p.ProductKey = s.ProductKey
		GROUP BY Year_and_month
		ORDER BY Year_and_month
)
SELECT 
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER(ORDER BY Year_and_month) AS PreviousMonthRevenue,
    LEAD(TotalRevenue) OVER(ORDER BY Year_and_month) AS NextMonthRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER(ORDER BY Year_and_month) AS SalesAmountChange
FROM Understanding_revenue;


WITH Understanding_revenue AS (
		SELECT 
			DATE_FORMAT(s.OrderDate, '%Y-%m') AS Year_and_month,
			ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
		FROM sales2015 s 
		JOIN Products p 
		ON p.ProductKey = s.ProductKey
		GROUP BY Year_and_month
		ORDER BY Year_and_month
)
SELECT 
	Year_and_month,
    TotalRevenue,
    LAG(TotalRevenue) OVER(ORDER BY Year_and_month) AS PreviousMonthRevenue,
    LEAD(TotalRevenue) OVER(ORDER BY Year_and_month) AS NextMonthRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER(ORDER BY Year_and_month) AS SalesAmountChange,
    CASE 
		WHEN TotalRevenue > LAG(TotalRevenue) OVER(ORDER BY Year_and_month) THEN 'Increase'
        WHEN TotalRevenue < LAG(TotalRevenue) OVER(ORDER BY Year_and_month) THEN 'Decrease'
        ELSE 'No Change'
    END AS SalesTrend
FROM Understanding_revenue;

WITH AllSales AS (
	SELECT * FROM sales2015
    UNION ALL 
    SELECT * FROM sales2016
    UNION ALL
    Select * FROM Sales2017
),
Understanding_Revenue AS (
	SELECT 
		YEAR(s.OrderDate) AS Year_part,
        ROUND(SUM(p.ProductPrice * s.OrderQuantity),0) AS TotalRevenue
	FROM AllSales s 
    JOIN Products p 
    ON p.ProductKey = s.ProductKey
    GROUP BY Year_part
    ORDER BY Year_part
)
SELECT 
	Year_part,
    TotalRevenue,
    LAG(TotalRevenue) OVER(ORDER BY Year_part) AS PreviousYearRevenue,
    LEAD(TotalRevenue) OVER(ORDER BY Year_part) AS NextYearRevenue,
    TotalRevenue - LAG(TotalRevenue) OVER(ORDER BY Year_part) AS SalesAmountChange,
    CASE 
		WHEN TotalRevenue > LAG(TotalRevenue) OVER(ORDER BY Year_part) THEN 'Increase'
        WHEN TotalRevenue < LAG(TotalRevenue) OVER(ORDER BY Year_part) THEN 'Decrease'
        ELSE 'No Change'
        END AS SalesTrend
	FROM Understanding_Revenue;
    
    SELECT 
		ProductName,
        ProductPrice,
        NTILE(4) OVER(ORDER BY ProductPrice DESC) AS price_quartile
	FROM Products;
    
    
        