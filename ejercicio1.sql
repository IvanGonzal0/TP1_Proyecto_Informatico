-- SENTENCIAS SQL PARA CREAR LA DB Computadoras 
CREATE DATABASE IF NOT EXISTS Computadoras;
USE Computadoras;

-- SENTENCIAS SQL PARA CREAR TABLAS
CREATE TABLE IF NOT EXISTS Notebook (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(255),
    modelo VARCHAR(255),
    precio DECIMAL(10, 2),
    fecha_fabricacion DATE
);
/* INSERTAR REGISTROS EN LA TABLA CREADA */
INSERT INTO Notebook (marca, modelo, precio, fecha_fabricacion)
VALUES
    ('Dell', 'XPS 13', 1299.99, '2023-03-15'),
    ('HP', 'Spectre x360', 1199.95, '2022-09-20'),
    ('Lenovo', 'ThinkPad X1 Carbon', 1399.99, '2023-01-10'),
    ('Apple', 'MacBook Air', 999.99, '2022-12-05'),
    ('Asus', 'ZenBook 14', 1099.95, '2023-02-28'),
    ('Acer', 'Swift 5', 899.99, '2022-08-18'),
    ('Microsoft', 'Surface Laptop 4', 1299.99, '2022-07-25'),
    ('Razer', 'Blade Stealth', 1499.95, '2023-04-02'),
    ('LG', 'Gram 17', 1399.99, '2022-11-12');

-- a. La información completa de todas las notebooks.
SELECT * FROM Notebook;

-- b. La marca y modelo de todas las notebooks. 
SELECT marca, modelo FROM Notebook;

-- c. La información completa de todas las notebooks cuyo precio es superior a un valor dado. 
SELECT * FROM Notebook WHERE precio > 1000;

-- d. El precio de todas las notebooks cuya fecha de fabricación corresponde a un intervalo dado.
SELECT precio FROM Notebook WHERE fecha_fabricacion BETWEEN '2022-01-01' AND '2022-12-31';

-- e. La información de una notebook a partir de su id.
SELECT * FROM Notebook WHERE id = 3;
