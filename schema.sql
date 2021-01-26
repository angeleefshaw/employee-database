DROP DATABASE IF EXISTS employee_DB;
CREATE database employee_DB;

USE employee_DB;

CREATE TABLE department (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  department_id INT,
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  title VARCHAR(50) NOT NULL, 
  role_id INT,
  manager_id INT NULL,
  PRIMARY KEY (id)
)

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Angela', 'Stone', 4, 17)
)

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Kim', 'Lee', 6, 19)
)

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Antonio', 'Millet', 19, 18)
)