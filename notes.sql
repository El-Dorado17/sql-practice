Practice sites:
SQL Practice Websites , SQLZoo - Started 10/30 , SQL Fiddle , DB-Fiddle , DB<>Fiddle , HackerRank , SQL Bolt , Oracle Live SQL , W3Schools , W3Resource , StackOverflow
Data Explorer , Coding Ground by Tutorials Point , SQL Course , Tech on the Net , SQL-ex , Rextester , SQLize , SQL Test

-- DEFINITIONS:
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