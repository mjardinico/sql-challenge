-- List the department number for each employee along with that employee’s 
-- employee number, last name, first name, and department name (2 points)

SELECT 
	de.dept_no,
	e.emp_no,
	e.last_name, 
	e.first_name,
	d.dept_name
FROM departments AS d
JOIN dept_emp AS de ON d.dept_no = de.dept_no
JOIN employees AS e ON e.emp_no = de.emp_no