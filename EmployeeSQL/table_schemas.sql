-- CREATE TABLES

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY, 
	title VARCHAR NOT NULL
	);

select * from titles
------------------------------

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL 
	);
select * from departments

----------------------------

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL, 
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	sex VARCHAR NOT NULL, 
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	
	
);
select * from employees

-----------------------------

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_emp

------------------------------
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL, 
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from salaries
-------------------------------

CREATE TABLE dept_managers (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	select * from dept_managers
	
--------------------------------



