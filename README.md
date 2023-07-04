**CSV files - Importing**
Make sure that there is a folder called Employee_SQL. In that folder you will find:
<br>&ensp; 1. departments.csv
<br>&ensp; 2. dept_emp.csv
<br>&ensp; 3. dept_manager.csv
<br>&ensp; 4. employees.csv
<br>&ensp; 5. salaries.csv
<br>&ensp; 6. titles.csv

The current files in those folders are the files required to import into PgAdmin4

**Data Modeling:**
<br>You can find the image in, "ERD_Pewlett_Hacckard.png", file
<br>For futher detail, you can click on this link: https://app.quickdatabasediagrams.com/#/d/MDz0ma

**Data Engineering**
<br><br>1. You will first need to create a database.
<br>&ensp; - Right click on PostgrsSQL 
<br>&ensp; - Click on create --> Database
<br>&ensp; - In the Database field type **Pewlett_Hackard_DB**
<br>&ensp; - In Owner field, keep postgres
<br>&ensp; - Leave comment field blank 
<br>&ensp; - Click on save

<br>2. Start creating the tables
<br>&ensp;- Right click on the database, "Pewlett_Hackard_DB"
<br>&ensp;- Click on Query Tool 
<br>&ensp;- Open, "Schemata_Pewlett_Hackard.sql",  to copy and paste each table creation 
<br>&ensp;- After creating a table, import the appropriate csv file accordingly, and then check the table to ensure that it imported the data:
<br>&ensp; * department table --> departments.csv
<br>&ensp; * titles --> titles.csv
<br>&ensp; * employees --> employees.csv
<br>&ensp; * department_manager --> dept_manager.csv
<br>&ensp; * department_employee --> dept_emp.csv
<br>&ensp; * salaries --> salaries.csv

**Data Analysis**
<br>&ensp; 1. Open, "Queries_Pewlett_Hackard.sql", file
<br>&ensp; 2. Copy and paste each query section one at a time OR paste all of it and highlight one section at a time to run each query indvidually 

**Source**
Filter for date
https://stackoverflow.com/questions/15817871/postgresql-filter-a-date-range


