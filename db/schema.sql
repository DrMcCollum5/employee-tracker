DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;

USE employees;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id),
    name VARCHAR(30),
    
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id),
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT NULL,
    INDEX department_id,
    CONSTRAINT fk_department
    FOREIGN KEY(department_id) REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (id),
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NULL, UNSINED NOT NULL,
    INDEX role_id,
    CONSTRAINT fk_role 
    manager_id INT NULL,
    INDEX man_ind (manager_id)
    FOREIGN KEY (roles_id) REFERENCES roles (id),
    FOREIGN KEY (manager_id) REFERENCES employee (id)
);