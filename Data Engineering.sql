CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(15) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1) CHECK (sex IN ('M', 'F')),
    hire_date DATE
	);
	
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT PRIMARY KEY NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    CONSTRAINT fk_dept_emp_emp FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    CONSTRAINT fk_dept_emp_dept FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT PRIMARY KEY NOT NULL,
    CONSTRAINT fk_dept_manager_dept FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    CONSTRAINT fk_dept_manager_emp FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY NOT NULL,
    salary INT,
    CONSTRAINT fk_salaries_emp FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(15) PRIMARY KEY NOT NULL,
    title VARCHAR(50)
);

SELECT * from departments;
