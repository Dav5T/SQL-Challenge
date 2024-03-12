# Project Background
A fictional company needs to do some research on employees during the 1980's to 1990's. The data is spread through six different CSV files. In order to accomplish this, we need to design tables that will hold the data from the csv files, import the csv files into the SQL database, and provide answers regarding the data. To accomplish this, we need to perfom data modeling, data engineering and data analysis.

## Files and Folders
Make sure that there is a folder called Employee_SQL. The you will need these csv files to import into pgADmin4. In that folder you will find:
<br>&ensp; 1. departments.csv
<br>&ensp; 2. dept_emp.csv
<br>&ensp; 3. dept_manager.csv
<br>&ensp; 4. employees.csv
<br>&ensp; 5. salaries.csv
<br>&ensp; 6. titles.csv

**Data Modeling:**
<br>You can find the image in, "ERD_Pewlett_Hacckard.png" or right below:
![image](https://github.com/Dav5T/sql_challenge/assets/130593953/b44572cb-77c9-4cc0-864b-27d7d25ff73a)
<br>For futher details on creating a data model, you can click on this link: https://app.quickdatabasediagrams.com/#/d/MDz0ma

## Data Engineering
**1. Create a database**.
<br>&ensp; - Right click on PostgrsSQL 
<br>&ensp; - Click on create --> Database
<br>&ensp; - In the Database field type **Pewlett_Hackard_DB**
<br>&ensp; - In Owner field, keep postgres
<br>&ensp; - Leave comment field blank 
<br>&ensp; - Click on save

**2. Create the tables**
<br>&ensp;- Right click on the database, "Pewlett_Hackard_DB"
<br>&ensp;- Click on Query Tool 
<br>&ensp;- Open, "Schemata_Pewlett_Hackard.sql",  to copy and paste each table creation 
<br>&ensp;- After creating a table, import the appropriate csv file accordingly. After that, check the table to ensure that the data was properly imported:
<br>&ensp; * department table --> departments.csv
<br>&ensp; * titles --> titles.csv
<br>&ensp; * employees --> employees.csv
<br>&ensp; * department_manager --> dept_manager.csv
<br>&ensp; * department_employee --> dept_emp.csv
<br>&ensp; * salaries --> salaries.csv

## Data Analysis
&ensp; 1. Open, "Queries_Pewlett_Hackard.sql", file
<br>&ensp; 2. Copy and paste each query section one at a time OR paste all of it and highlight one section at a time to run each query indvidually 

**Source**
Filter for date
https://stackoverflow.com/questions/15817871/postgresql-filter-a-date-range


