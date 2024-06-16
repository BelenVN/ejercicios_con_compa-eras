CREATE SCHEMA creacion_tienda;
USE creacion_tienda;

CREATE TABLE customers (
id_customer INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (20),
apellidos VARCHAR (40),
dirección VARCHAR(255),
email VARCHAR(30) UNIQUE,
id_employee INT (3),
edad INT,
CONSTRAINT `min_edad`
	CHECK (edad>18),
total_pedido FLOAT (5,2) UNSIGNED,
PRIMARY KEY (id_customer),
FOREIGN KEY (id_employee) REFERENCES employees (id_employee)
);

CREATE TABLE employees (
id_employee INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (20),
apellidos VARCHAR (40),
salario FLOAT UNSIGNED,
PRIMARY KEY (id_employee)
);

ALTER TABLE customers
MODIFY COLUMN total_pedido FLOAT;

ALTER TABLE employees
MODIFY COLUMN salario FLOAT;






