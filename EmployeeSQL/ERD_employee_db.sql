-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS departments;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS salaries;
-- DROP TABLE IF EXISTS titles;
-- DROP TABLE IF EXISTS employee_titles;

-- Drop Constraints
-- ALTER TABLE employee_titles DROP CONSTRAINTS "pk_employee_titles"; 
-- ALTER TABLE employee_titles DROP CONSTRAINTS "fk_employee_titles_emp_no";
-- ALTER TABLE employee_titles DROP CONSTRAINTS "fk_employee_titles_title_id";



CREATE TABLE IF NOT EXISTS employees (
    emp_no INT NOT NULL,
    emp_title VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE IF NOT EXISTS departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE IF NOT EXISTS dept_emp (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE IF NOT EXISTS dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE IF NOT EXISTS salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE IF NOT EXISTS titles (
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(50) NOT NULL,
    PRIMARY KEY (title_id)
);
	
-- Create a junction table
CREATE TABLE IF NOT EXISTS "employee_titles" (
    "emp_no" INT NOT NULL,
    "title_id" VARCHAR(10) NOT NULL,
    CONSTRAINT "pk_employee_titles" PRIMARY KEY ("emp_no", "title_id"),
    CONSTRAINT "fk_employee_titles_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
    CONSTRAINT "fk_employee_titles_title_id" FOREIGN KEY ("title_id") REFERENCES "titles" ("title_id")
);
