**CSV files - Importing**
Make sure that there is a folder called Employee_SQL. In that folder you will find:  
    1. departments.csv
    2. dept_emp.csv
    3. dept_manager.csv
    4. employees.csv
    5. salaries.csv
    6. titles.csv

The current files in those folders are the files required to import into PgAdmin4

**Data Modeling:**
You can find the image in, "ERD_Pewlett_Hacckard.png", file
For futher detail, you can click on this link: https://app.quickdatabasediagrams.com/#/d/MDz0ma

**Data Engineering**
    1. You will first need to create a database.
        - right click on PostgrsSQL 
        - click on create --> Database
        - in the Database field type **Pewlett_Hackard_DB**
        - in Owner field, keep postgres
        - leave comment field blank 
        - press save
    2. Start creating the tables
        - Right click on the database, "Pewlett_Hackard_DB"
        - Click on Query Tool 
        - Open, "Schemata_Pewlett_Hackard.sql",  to copy and paste each table creation 
        - After creating a table, import the appropriate csv file accordingly, and then check the table to ensure that it imported the data:
            - department table = departments.csv
            - titles = titles.csv
            - employees = employees.csv
            - department_manager = dept_manager.csv
            - department_employee = dept_emp.csv
            - salaries = salaries.csv

**Data Analysis**
1. Open, "Queries_Pewlett_Hackard.sql", file
2. Copy and paste each query section one at a time OR paste all of it and highlight one section at a time to run each query indvidually 




