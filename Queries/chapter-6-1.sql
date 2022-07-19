-- ROLLUP (single column)
select "CUST_COUNTRY", sum("PAYMENT_AMT")
from "CUSTOMER"
group by  ROLLUP("CUST_COUNTRY");

-- ROLLUP (multiple column)
select "CUST_COUNTRY", "CUST_CITY", sum("PAYMENT_AMT")
from "CUSTOMER"
group by  ROLLUP("CUST_COUNTRY", "CUST_CITY");

--CUBE
select "CUST_COUNTRY", "CUST_CITY", sum("PAYMENT_AMT")
from "CUSTOMER"
group by CUBE("CUST_COUNTRY", "CUST_CITY");

--GROUPING SETS
select "CUST_COUNTRY", "CUST_CITY", sum("PAYMENT_AMT")
from "CUSTOMER"
group by GROUPING SETS(
    ("CUST_COUNTRY"),
    ("CUST_CITY"),
    ("CUST_COUNTRY", "CUST_CITY"), ()
    );

--WITH
WITH TEMP_1 AS (SELECT * FROM TABLE1 WHERE condition_1),
     TEMP_2 AS (SELECT * FROM TABLE2 WHERE condition_2)

SELECT *
FROM TEMP_1
JOIN TEMP_2 ON TEMP_1.col1 = TEMP_2.col5;

--PIVOT
SELECT 'AverageCost' AS cost_prod_days, [0], [1], [2], [3]
FROM
    (SELECT days, cost FROM Production.Product) AS SourceTable
    PIVOT
    (AVG(cost)
    FOR days IN ([0], [1], [2], [3])) AS PivotTable;

--UNPIVOT
SELECT ID, employee, orders
FROM
    (SELECT ID, e1, e2, e3, e4, e5
     FROM pvt) p
    UNPIVOT

(Orders FOR employee IN (e1, e2, e3, e4, e5)
) AS unpvt;

--MERGE
MERGE Products AS TARGET
    USING NewProducts AS SOURCE
    ON (TARGET.ProductID = SOURCE.ProductID)
    WHEN MATCHED AND TARGET.ProductName <> SOURCE.ProductName OR TARGET.Rate <> SOURCE.Rate
    THEN UPDATE SET TARGET.ProductName = SOURCE.ProductName, TARGET.Rate = SOURCE.Rate
             WHEN NOT MATCHED BY TARGET
             THEN INSERT (ProductID, ProductName, Rate) VALUES (SOURCE.ProductID, SOURCE.ProductName, SOURCE.Rate)
             WHEN NOT MATCHED BY SOURCE
             THEN DELETE;

--OVER
SELECT
    [Partition],
    Value,
    Value * 100.0 / SUM(Value) OVER (PARTITION BY [Partition]) AS ValuePercent
FROM sample;

--CASE
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

--IN
SELECT products
FROM product_catalog
WHERE category IN (SELECT category from milk_products);

--WINDOW FUNCTIONS
--AVERAGE
SELECT Name, Age, Department, Salary,
       AVERAGE(Salary) OVER(PARTITION BY Department ORDER BY Age) AS Avg_Salary
FROM Customer;

--COUNT
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

--SUM
SELECT SUM(column_name)
FROM table_name
WHERE condition;

--STDDEV
SELECT STDDEV(column_name)
FROM table_name
WHERE condition;

--STDEVP
SELECT STDEVP(column_name)
FROM table_name
WHERE condition;
