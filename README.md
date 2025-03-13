# Data_engineering_project
data engineering project on adventure work
*Steps*
Data Source (HTTPS)
Identify the API endpoint or website providing data.
Set up authentication (if required, e.g., API keys, OAuth).
Define the data format (JSON, XML, CSV).

Data Ingestion (Azure Data Factory)
Create a pipeline in Azure Data Factory (ADF).
Use HTTP connector to extract data from the source.
Store the raw data in Azure Data Lake Storage Gen2.

Raw Data Storage (Azure Data Lake Gen2)
Store ingested data in a structured format (e.g., Parquet, CSV, JSON).
Organize data into hierarchical folders (e.g., raw/year/month/day/).

Transformation (Databricks)
Read raw data from Data Lake Gen2 using Spark.
Perform data cleaning, validation, and transformation using PySpark or SQL.
Store the transformed data back into Data Lake in an optimized format (Delta Lake, Parquet).

Transformed Data Storage (Azure Data Lake Gen2)
Store processed data in a structured format (Delta Lake, Parquet).
Organize it in a curated folder (e.g., curated/year/month/day/).

Service Layer (Azure Synapse Analytics)
Load transformed data into Synapse Analytics for querying.
Use serverless or dedicated SQL pools for fast querying and analysis.

Reporting (Power BI)
Connect Power BI to Synapse Analytics or Data Lake Gen2.
Build dashboards and visualizations for insights.
Set up scheduled refreshes for real-time updates.

---------------- @geetesh012 -----------------------
