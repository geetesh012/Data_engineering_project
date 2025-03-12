CREATE DATABASE SCOPED CREDENTIAL cred_geetu
WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_geetu
WITH
(
    LOCATION = 'https://geetustoragedatalake.blob.core.windows.net/silver',
    CREDENTIAL = cred_geetu
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://geetustoragedatalake.blob.core.windows.net/gold',
    CREDENTIAL = cred_geetu
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION ='org.apache.hadoop.io.compress.SnappyCodec'
)


----------------------------
---CREATE EXTERNAL TABLES
----------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM gold.sales

CREATE EXTERNAL TABLE gold.extcal
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM gold.calender

CREATE EXTERNAL TABLE gold.extcustomer
WITH
(
    LOCATION = 'extcustomer',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM gold.customers

CREATE EXTERNAL TABLE gold.extproduct_subcat
WITH
(
    LOCATION = 'extproduct_subcat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM gold.product_subcat

CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM gold.products

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM gold.returnss

CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) as 
SELECT * FROM gold.territories













