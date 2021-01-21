DROP DATABASE IF EXISTS employee_DB;
CREATE database employee_DB;

USE employee_DB;

CREATE TABLE department (
  position INT NOT NULL,
  id INT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (position)
);

CREATE TABLE role (
  position INT NOT NULL,
  id INT PRIMARY KEY,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  department_id INT,
  PRIMARY KEY (position)
);

CREATE TABLE employee (
  id - INT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT NULL
)


SELECT * FROM
select * from 
