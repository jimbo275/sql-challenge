# sql-challenge

In this exercise, I constructed a new database in PGAdmin called unit_09_hw_db and created 6 tables: titles, departments, dept_emp, dept_manager, salaries and employees and populated them with the data from a number of csv files. 

Note that there were a number of records in the employee table which had employee numbers but no other data. I assumed that these people were legitimate employees and counted them along with the rest. If we wanted to remove them we could simply have added clauses like 'WHERE employee.last_name IS NOT NULL' for example.  
