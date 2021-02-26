# sql-challenge

In this exercise, I constructed a new database in PGAdmin called unit_09_hw_db and created 6 tables: titles, departments, dept_emp, dept_manager, salaries and employees and populated them with the data from a number of csv files. I saved the schema queries in the file 'schema_HW.sql'

Then, using the tool Free Database diagram, I created a diagram of the schema for my tables, exported the picture and uploaded it as 'employees_db_diagram.png'. The original diagram is located here:
https://app.quickdatabasediagrams.com/#/d/XqLj1G

Note that there were a number of records in the employee table which had employee numbers but no other data. I assumed that these people were legitimate employees and counted them along with the rest. If we wanted to remove them we could simply have added clauses like 'WHERE employee.last_name IS NOT NULL' for example.  

I then ran a number of queries on the underlying data to answer the following questions and saved them in the file 'queries_HW.sql':

1. Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number

2. Select the first name, last name, and hiring date for all employees hired in 1986

3. Select the department number, department name, employee number, last name, and first name of all managers of each department

4. Select the employee number, last name, first name, and department of each employee, ordered by employee number

5. Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"

6. Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number

7. Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number

8. Count the number of employees, grouped by last name

