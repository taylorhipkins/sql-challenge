BEGIN;

-- Create employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(35) NOT NULL,
    last_name VARCHAR(35) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

-- Create departments table
CREATE TABLE departments (
    dept_no VARCHAR(8) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

-- Create department employee table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(8) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL
);

-- Create Department manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(8) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- Create titles table
CREATE TABLE titles (
    title_id VARCHAR(8) PRIMARY KEY NOT NULL,
    title VARCHAR(40) NOT NULL
);

COMMIT;