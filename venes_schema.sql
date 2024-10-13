--create departments table
CREATE TABLE departments (
    "dept_no" VARCHAR(5)   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT *
FROM departments
	
--create titles table
CREATE TABLE titles (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    PRIMARY KEY ("title_id")
);

SELECT *
FROM titles

--create employees table
CREATE TABLE employees (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    FOREIGN KEY ("emp_title_id") REFERENCES titles ("title_id"),
    PRIMARY KEY ("emp_no")
);

SELECT *
FROM employees

--create dept_emp table
CREATE TABLE dept_emp (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES departments ("dept_no"),
    PRIMARY KEY ("emp_no", "dept_no")
);

SELECT *
FROM dept_emp
	
--create dept_manager table
CREATE TABLE dept_manager (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES departments ("dept_no"),
    PRIMARY KEY ("dept_no", "emp_no")
);

SELECT *
FROM dept_manager

--create salaries table
CREATE TABLE salaries (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no"),
    PRIMARY KEY ("emp_no")
);

SELECT *
FROM salaries




