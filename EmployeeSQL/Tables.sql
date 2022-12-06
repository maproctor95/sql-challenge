CREATE TABLE departments(
	dept_no CHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE titles(
	title_id CHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(30)
);

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id CHAR(5),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex CHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries(
	emp_no INT,
	salary FLOAT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_managers(
	dept_no CHAR(4),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no CHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_managers;
SELECT * FROM dept_emp;