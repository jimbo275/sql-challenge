-- Create the titles table, with a primary id and a title
CREATE TABLE titles (
   title_id VARCHAR(30) PRIMARY KEY,
   title VARCHAR(30)
);

-- Create an employees table, with the following: 
--    employee number, 
--    employee title id,
--    birth date
--    first name
--    last name
--    sex
--    hire date
-- set the foreign key and primary key relationships accordingly

CREATE TABLE employees (
   emp_no VARCHAR(30) PRIMARY KEY,
   emp_title_id VARCHAR(30) REFERENCES titles(title_id),
   birth_date VARCHAR(30),
   first_name VARCHAR(30),
   last_name VARCHAR(30),
   sex VARCHAR(1),
   hire_date VARCHAR(30)
);

-- Create an departments table, with the following: 
--    department number, 
--    department name
-- set the primary key relationships accordingly

CREATE TABLE departments (
   dept_no VARCHAR(30) PRIMARY KEY,
   dept_name VARCHAR(30)
);


-- Create an dept_manager table, with the following: 
--    department number, 
--    employee number
-- set the foreign key and primary key relationships accordingly

CREATE TABLE dept_manager (
   dept_no VARCHAR(30) REFERENCES departments(dept_no),
   emp_no INTEGER(30) REFERENCES employees(emp_no)
);


-- Create an dept_emp table, with the following: 
--    department number, 
--    employee number
-- set the foreign key and primary key relationships accordingly

CREATE TABLE dept_emp (
   emp_no INTEGER(30) REFERENCES employees(emp_no),
   dept_no VARCHAR(30) REFERENCES departments(dept_no)
); 


-- Create an salaries table, with the following: 
--    salary 
--    employee number
-- set the foreign key and primary key relationships accordingly

CREATE TABLE salaries (
   emp_no INTEGER(30) REFERENCES employees(emp_no),
   salary INTEGER(30)
);


