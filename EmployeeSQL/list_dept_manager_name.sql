-- List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name (2 points)

SELECT 
	dm.dept_no AS "Dept Number",
	e.emp_no AS "Emp Number", 
	e.last_name AS "Manager Last Name", 
	e.first_name AS "Manager First Name",
	d.dept_name AS "Dept Name"
FROM dept_manager AS dm
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no;
	