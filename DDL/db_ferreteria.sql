CREATE DATABASE IF NOT EXISTS db_ferreteria;
USE db_ferreteria;

CREATE TABLE IF NOT EXISTS clientes (
    IdCliente INT PRIMARY KEY AUTO_INCREMENT,
    NombreCompleto VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Direccion VARCHAR(150) NULL,
    FechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO clientes ( NombreCompleto, Telefono, Email, Direccion, FechaRegistro)

VALUES 
("PRODO01", "WILMER SIOLO", "3217775022", "wilmersiolo@gmail.com", "7 2-23", "2024-06-16"),
("PRODO02", "JORGE OVIEDO", "3205075157", "jorgeoviedo@gmail.com", "8 6-45", "2024-07-02"),
("PRODO03", "ANTONIO RODRIGUEZ", "3047854212", "antoniorodriguez@gmail.com", "4 7-22", "2024-08-11"),
("PRODO04", "LEONARDO GIL", "3250270223", "leonardogil@gmail.com", "1 2-77", "2024-09-04"),
("PRODO05", "ARGEMIRO CARDENAS", "3205540272", "argemirocardenas@gmail.com", "1 1-57", "2024-10-17"),