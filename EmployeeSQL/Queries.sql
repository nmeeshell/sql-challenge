{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.\
\
SELECT e.emp_no, e.last_name,e.first_name,e.sex,s.salary\
FROM employees AS e LEFT JOIN salaries AS s\
ON e.emp_no = s.emp_no\
ORDER BY e.emp_no;\
\
-- 2. List first name, last name, and hire date for employees who were hired in 1986.\
\
SELECT first_name,last_name, hire_date\
FROM employees\
WHERE year(hire_date) like '1987%';\
\
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.\
\
SELECT dm.dept_no,d.dept_name, dm.emp_no, e.last_name, e.first_name\
FROM dept_manager AS dm\
INNER JOIN departments AS d\
		ON dm.dept_no = d.dept_no\
LEFT JOIN employees AS e\
		ON dm.emp_no = e.emp_no;\
		\
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.\
\
SELECT e.emp_no,e.last_name, e.first_name, d.dept_name\
FROM employees AS e\
INNER JOIN dept_emp AS de\
		ON e.emp_no = de.emp_no\
INNER JOIN departments AS d\
		ON de.dept_no = d.dept_no;\
		\
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."\
\
SELECT e.first_name, e.last_name, e.sex \
FROM employees AS e\
WHERE first_name = 'Hercules' AND last_name like 'B%';\
\
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.\
\
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name\
FROM employees AS e\
LEFT JOIN dept_emp AS DE\
		ON e.emp_no = de.emp_no\
INNER JOIN departments AS d\
		ON de.dept_no = d.dept_no\
WHERE d.dept_name = 'Sales';\
\
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.\
\
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name\
FROM employees AS e\
LEFT JOIN dept_emp AS de\
		ON e.emp_no = de.emp_no\
INNER JOIN departments AS d\
		ON de.dept_no= d.dept_no\
WHERE d.dept_name in ('Sales', 'Development');\
\
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.\
\
SELECT last_name, COUNT(*) AS freq_count\
FROM employees\
GROUP BY last_name\
ORDER BY freq_count DESC;}