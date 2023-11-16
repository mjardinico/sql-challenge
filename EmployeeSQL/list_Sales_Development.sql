-- List each employee in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name (4 points)
SELECT 
	de.emp_no, 
	e.last_name, 
	e.first_name,
	d.dept_name
FROM departments AS d
JOIN dept_emp AS de ON de.dept_no = d.dept_no
JOIN employees AS e ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales' 
OR d.dept_name = 'Development'