# Learning_SSIS_SSAS_SSRS
Using AdventureWorks DB, creating Data Warehouse using SQL and SSIS, analysis and reporting using SSAS and SSRS

## Project Description

Learning SSIS,SSAS,SSRS by doing a self made project using AdventureWorks2022 open sourced DataBase

## Technologies Used

- DBeaver (to export Diagrams)
- Looping (Modelisation)
- SQL Server (SSMS)
- SSIS
- SSAS
- SSRS

## DataBase exploration
- AdventureWorks DB contains 71 tables, we won't be using all of them to create DW in order to focus on some Facts.

## Steps Data Warehouse Modelisation

### Creating Staging DB (SQL query)

-- Step 1: Backup the source database
BACKUP DATABASE AdventureWorks2022
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\AdvWorks2022.bak'
WITH FORMAT, INIT;

-- Step 2: Restore with different file names
RESTORE DATABASE AdventureWorks2022_Stag
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\AdvWorks2022.bak'
WITH 
    MOVE 'AdventureWorks2022' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AdventureWorks2022_Stag.mdf',
    MOVE 'AdventureWorks2022_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AdventureWorks2022_Stag_log.ldf',
    REPLACE;

### Simplifying Staging DB 

- Deleting non pertinent tables
- Deleting non pertinent relations (see cleaning_script)
I'm aware that it's not a professionnal way of doing but in this pilote project i want to make it simple :)

Diagram after cleaning

<img width="519" height="538" alt="diag_after_cleaning" src="https://github.com/user-attachments/assets/17310dba-2a9e-4c8f-bb1a-5c2871061259" />

### Defining Key questions

- What is the average price for each sales?
- What is the repartition of time between ShipDate and DueDate?
- What is the repartition of difference between PlannedCost and ActualCost?
- What are the product that generate the most profit?
- What are the best vendor(Sales amonth) ?
- What are the best customer ?
- Where are located the best vendor ?
- Where are located the best customer ?
- What is the evolution of sales ?
- What month gives the best sales results ?
- What are the best vendor (review) ?
- What are the best products (review) ?
- Does the rating of one order depends on time between ShipDate and DueDate?
- What are the main raison to scrap products ?
- What are the most scrap products ?

### Modelisation using Looping

<img width="1178" height="678" alt="Modelisation" src="https://github.com/user-attachments/assets/496655f8-13a1-499c-83b0-9ab81bba7c44" /> 

### Creating DataWarehouse

### Filling DataWarehouse using SSIS

### SSAS

### SSRS

### Power BI ?


## Findings



## Data Collection

Once

