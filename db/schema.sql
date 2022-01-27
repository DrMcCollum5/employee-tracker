DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    PRIMARY KEY(id)
);

CREATE TABLE roles(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(department_id) REFERENCES department(id)
);

CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (id),
    first_name VARCHAR(30) NULL,
    last_name VARCHAR(30) NULL,
    roles_id INT NULL,
    manager_id INT NULL,
    FOREIGN KEY (roles_id) REFERENCES roles (id),
    FOREIGN KEY (manager_id) REFERENCES employee (id)
);