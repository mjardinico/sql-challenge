# Module 9 Challenge: 
### SQL Challenge
```
Title: Pewlett Hackard Employee Database Project
Author:  Michael Jardinico 
Version: 1.0 
Date Created: 11/16/2023
```

## Overview
```This project involves creating and analyzing a database for Pewlett Hackard, a fictional company. The focus is on employees from the 1980s and 1990s, with data stored across six CSV files. The project encompasses data modeling, data engineering, and data analysis.```

## Getting Started
### Before You Begin
- Repository Setup: Create a new repository named sql-challenge.
- Clone Repository: Clone this repository to your local machine.
- Project Directory: Inside your local repository, create a directory named EmployeeSQL for this challenge.
- File Setup: Add your project files to this directory and push changes to GitHub.

### Files
Download the Module 9 Challenge files for initial setup. Download link:  https://github.com/mjardinico/sql-challenge/tree/main/EmployeeSQL/data 

### Project Instructions
1. Data Modeling
Inspect CSVs: Examine the six CSV files provided.
ERD Creation: Sketch an Entity Relationship Diagram (ERD) of the tables. Tools like QuickDBD can be used.
2. Data Engineering
Table Schema: Create a schema for each CSV file. Ensure to:
Specify data types, primary keys, foreign keys, and constraints.
Check for unique primary keys or create composite keys as necessary.
Create tables in an order that respects foreign key relationships.
Data Import: Import each CSV file into its corresponding SQL table.
3. Data Analysis

### Perform various SQL queries to analyze the data:**

- Employee details (number, name, sex, salary)
- Employees hired in 1986
- Department managers
- Department and employee details
- Employees named Hercules with last name starting with 'B'
- Employees in the Sales department
- Employees in Sales and Development departments
- Frequency count of employee last names


### Requirements
**Data Modeling (10 points)**
- Complete ERD or table schemas for all tables.
```https://github.com/mjardinico/sql-challenge/blob/main/QuickDBD-table_schemas.sql``` 


**Data Engineering (70 points)**
```https://github.com/mjardinico/sql-challenge/blob/main/EmployeeSQL/ERD_employee_db.sql```

- Define all required columns for each table.
- Assign correct data types to columns.
- Set primary keys for each table.
- Reference related tables correctly.
- Use foreign keys appropriately.
- Apply NOT NULL condition where needed.
- Define accurate value lengths for columns.

**Data Analysis (20 points)**
1. List the employee number, last name, first name, sex, and salary of each employee 
2. List the first name, last name, and hire date for the employees who were hired in 1986 
3. List the manager of each department along with their department number, department name, employee number, last name, and first name 
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
6. List each employee in the Sales department, including their employee number, last name, and first name 
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
