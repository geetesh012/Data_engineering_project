-----------------------
---CREATE VIEW CALENDAR
-----------------------
CREATE VIEW gold.calendar
AS
SELECT *
FROM 
OPENROWSET(
    BULK'https://geetustoragedatalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUAR1

-------------------------
---CREATE VIEW CUSTOMERS
-------------------------
CREATE VIEW gold.customers
AS
SELECT *
FROM 
OPENROWSET(
    BULK'https://geetustoragedatalake.blob.core.windows.net/silver/AdventureWorks_Product_Customers/',
    FORMAT = 'PARQUET'
) AS QUAR1

-----------------------
---CREATE VIEW PRO_SUBCAT
-----------------------
CREATE VIEW gold.product_subcat
AS
SELECT *
FROM 
OPENROWSET(
    BULK'https://geetustoragedatalake.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS QUAR1

-----------------------
---CREATE VIEW PRODUCTS
-----------------------
CREATE VIEW gold.products
AS
SELECT *
FROM 
OPENROWSET(
    BULK'https://geetustoragedatalake.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS QUAR1

-----------------------
---CREATE VIEW RETURNS
-----------------------
CREATE VIEW gold.returnss
AS
SELECT *
FROM 
OPENROWSET(
    BULK'https://geetustoragedatalake.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUAR1

-----------------------
---CREATE VIEW SALES
-----------------------
CREATE VIEW gold.sales
AS
SELECT *
FROM 
OPENROWSET(
    BULK'https://geetustoragedatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS QUAR1

--------------------------
---CREATE VIEW TERRITORIES
--------------------------
CREATE VIEW gold.territories
AS
SELECT *
FROM 
OPENROWSET(
    BULK'https://geetustoragedatalake.blob.core.windows.net/silver/AdventureWorks_Territorires/',
    FORMAT = 'PARQUET'
) AS QUAR1