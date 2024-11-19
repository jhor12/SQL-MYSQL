CREATE DATABASE IF NOT EXISTS db_pedidos;
USE db_pedidos;

CREATE TABLE IF NOT EXISTS Clientes (
    IdCliente INT PRIMARY KEY AUTO_INCREMENT,
    NombreCompleto VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Productos (
    IdProducto INT PRIMARY KEY AUTO_INCREMENT,
    NombreProducto VARCHAR(100) NOT NULL,
    Precio DECIMAL(8,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Ventas (
    IdVenta INT PRIMARY KEY AUTO_INCREMENT,
    IdCliente INT NOT NULL,
    IdProducto INT NOT NULL,
    Cantidad INT NOT NULL,
    TotalVenta DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente),
    FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto)
);