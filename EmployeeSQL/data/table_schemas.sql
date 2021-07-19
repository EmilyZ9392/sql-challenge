-- CREATE TABLES

CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR NOT NULL, 
	PRIMARY KEY (dept_no)
	);
select * from departments

----------------------------

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL, 
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	gender VARCHAR NOT NULL, 
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
	
);
select * from employees

-----------------------------

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
select * from dept_emp

------------------------------

CREATE TABLE dept_managers (
	dept_no VARCHAR,
	emp_no INT,
	from_date DATE NOT NULL, 
	to_date DATE NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	select * from dept_managers
	
--------------------------------
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL, 
	from_date DATE NOT NULL, 
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from salaries
-------------------------------

CREATE TABLE titles (
	emp_no INT NOT NULL, 
	title VARCHAR NOT NULL, 
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from titles


