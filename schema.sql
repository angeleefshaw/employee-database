DROP DATABASE IF EXISTS employee_DB;
CREATE database employee_DB;

USE employee_DB;

CREATE TABLE department (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2)NOT  NULL,
  department_id INT
);

CREATE TABLE employee (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  title VARCHAR(50) NOT NULL, 
  role_id INT,
  manager_id INT NOT NULL,
);

INSERT INTO employee (first_name, last_name, title, role_id, manager_id)
VALUES ('Angela', 'Stone','Software Engineer', 4, 17);


INSERT INTO employee (first_name, last_name, title, role_id, manager_id)
VALUES ('Kim', 'Lee','Project Manager', 6, 19);


INSERT INTO employee (first_name, last_name, title, role_id, manager_id)
VALUES ('Antonio', 'Millet', 'Intern', 19, 18);
