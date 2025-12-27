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
- Deleting non pertinent relations
  
<img width="519" height="538" alt="diag_after_cleaning" src="https://github.com/user-attachments/assets/17310dba-2a9e-4c8f-bb1a-5c2871061259" />

### Defining Key questions











## Findings



## Data Collection

Once

