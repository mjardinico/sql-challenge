-- List each employee in the Sales department, including their 
-- employee number, last name, and first name (2 points)

SELECT 
	d.dept_name AS "Department Name", 
	de.emp_no,
	e.last_name, 
	e.first_name
FROM departments AS d
JOIN dept_emp AS de ON de.dept_no = d.dept_no
JOIN employees AS e ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales'