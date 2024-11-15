CREATE DATABASE IF NOT EXISTS db_inventario;
USE db_inventario;

CREATE TABLE IF NOT EXISTS Proveedores (
    IdProveedor INT PRIMARY KEY AUTO_INCREMENT,
    NombreEmpresa VARCHAR(100) NOT NULL,
    NombreContacto VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NULL,
    Direccion VARCHAR(150) NULL,
    Pais VARCHAR(50) NULL
);