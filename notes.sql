Practice sites:
SQL Practice Websites , SQLZoo - Started 10/30 , SQL Fiddle , DB-Fiddle , DB<>Fiddle , HackerRank , SQL Bolt , Oracle Live SQL , W3Schools , W3Resource , StackOverflow
Data Explorer , Coding Ground by Tutorials Point , SQL Course , Tech on the Net , SQL-ex , Rextester , SQLize , SQL Test

-- KEYWORDS
SELECT
    -- Indicate what we will are Querying about
    SELECT population FROM world


FROM
    -- Indicate what table we are talking about
    SELECT * FROM sales

WHERE
    -- Specify criteria
    SELECT * FROM sales
    WHERE North_American_Sales > 100,000

INSERT INTO
    -- Adds new data into a table
    INSERT INTO Employees (EmployeeID, FirstName, LastName)
    VALUES (444, Ely, Dorado)

UPDATE
    --Basically a PUT request
    Update Employees
    SET Status = 'Hired'
    WHERE EmployeeID = 444

DELETE
    -- Deletes a line of data
    DELETE FROM Products
    WHERE ProductID - 72

CREATE TABLE

ALTER TABLE

DROP TABLE

JOIN

GROUP BY

ORDER BY

DISTINCT

HAVING

ALWAYS

COUNT()

SUM(), AVG(), MIN(), MAX()

BETWEEN

LIKE 

IN

NOT

AND/OR

CASE

UNION


JOINS - LEFT & INNER
    SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    FROM Orders
    INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

    (INNER) JOIN: Returns records that have matching values in both tables
    LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
    RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
    FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

Groupby
count vs sum
case when/IF
Rank() Row_Number()
Where vs HAVING