-- NOTE that there are employees who have employee numbers but no other data (including names). If we only want to show -- those employees with actual names then we can filter the nulls out by adding a clause like 'WHERE employees.last_name IS -- NOT NULL'  


-- Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM
employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY employees.emp_no;

-- Select the first name, last name, and hiring date for all employees hired in 1986 
SELECT 
employees.first_name,
employees.last_name,
employees.hire_date
FROM
employees
WHERE employees.hire_date LIKE '%1986';

-- Select the department number, department name, employee number, last name, and first name of all managers of each department
SELECT
departments.dept_no,
departments.dept_name,
employees.emp_no,
employees.last_name,
employees.first_name
FROM
employees
JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
JOIN departments
ON dept_manager.dept_no = departments.dept_no;

-- Select the employee number, last name, first name, and department of each employee, ordered by employee number
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM
employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
ORDER BY employees.emp_no; 

-- Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"

SELECT
employees.first_name,
employees.last_name,
employees.birth_date,
employees.sex
FROM
employees
WHERE
employees.first_name LIKE '%Hercules%' AND employees.last_name LIKE 'B%';

-- Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number

SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY employees.emp_no;

-- Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number

SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY employees.emp_no;


-- Count the number of employees, grouped by last name
SELECT
employees.last_name,
COUNT(employees.emp_no)
FROM employees
GROUP BY employees.last_name;
