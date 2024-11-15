CREATE DATABASE IF NOT EXISTS db_biblioteca;
USE db_biblioteca;

CREATE TABLE IF NOT EXISTS Autores (
    IdAutor INT PRIMARY KEY AUTO_INCREMENT,
    NombreCompleto VARCHAR(100) NOT NULL,
    Nacionalidad VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Libros (
    IdLibro INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(150) NOT NULL,
    FechaPublicacion DATE,
    Precio DECIMAL(8,2) NOT NULL,
    IdAutor INT,
    FOREIGN KEY (IdAutor) REFERENCES Autores(IdAutor)
);