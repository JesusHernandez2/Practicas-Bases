CREATE DATABASE autos;
show databases;
use autos;

CREATE TABLE diseñador (
    id_diseñador INT(5) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50),
    nacionalidad VARCHAR(50) NOT NULL,
    sexo CHAR(1) NOT NULL,
    fecha_nacimiento DATE NOT NULL);

CREATE TABLE marca (
    id_modelo INT(5) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    año INT NOT NULL,
    diseñador INT(5) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    combustible VARCHAR(20) NOT NULL,
    FOREIGN KEY (diseñador) REFERENCES diseñador(id_diseñador));

CREATE TABLE auto (
    placas VARCHAR(20) PRIMARY KEY,
    marca INT(5) NOT NULL,
    niv VARCHAR(50) NOT NULL,
    llantas INT NOT NULL,
    asientos INT NOT NULL,
    color VARCHAR(30) NOT NULL,
    tipo_auto VARCHAR(30) NOT NULL,
    no_puertas INT NOT NULL,
    transmision VARCHAR(20) NOT NULL,
    no_cilindros INT NOT NULL,
    FOREIGN KEY (marca) REFERENCES marca(id_modelo));

-- Inserciones para la tabla "diseñador"
INSERT INTO diseñador (nombre, apellido_paterno, apellido_materno, nacionalidad, sexo, fecha_nacimiento)
VALUES ('Juan', 'Pérez', 'Gómez', 'Mexicana', 'M', '1980-03-20'),
       ('María', 'López', 'García', 'Española', 'F', '1995-08-12'),
       ('Michael', 'Johnson', 'Smith', 'Estadounidense', 'M', '1988-11-25'),
       ('Luisa', 'Martínez', 'Ruiz', 'Colombiana', 'F', '1982-06-30'),
       ('Isabella', 'Ramos', 'Luna', 'Mexicana', 'F', '1990-04-20');

-- Inserciones para la tabla "marca"
INSERT INTO marca (nombre, año, diseñador, precio, combustible)
VALUES ('Altima', 2022, 1, 30000.00, 'Gasolina'),
       ('Rogue', 2023, 2, 25000.00, 'Electrico'),
       ('Sentra', 2021, 3, 28000.00, 'Diesel'),
       ('Maxima', 2021, 4, 35000.00, 'Híbrido'),
       ('Versa', 2020, 5, 26000.00, 'Magna');

-- Inserciones para la tabla "auto"
INSERT INTO auto (placas, marca, niv, llantas, asientos, color, tipo_auto, no_puertas, transmision, no_cilindros)
VALUES ('ABC123', 1, 'VIN123456789', 4, 5, 'Rojo', 'manual', 4, 'Automática', 4),
       ('XYZ789', 2, 'VIN987654321', 4, 7, 'Azul', 'manual', 5, 'Manual', 6),
       ('DEF456', 3, 'VIN654321987', 4, 5, 'Negro', 'automatico', 2, 'Automática', 3),
       ('GHI789', 4, 'VIN789123456', 4, 7, 'Blanco', 'manual', 5, 'Automática', 4),
       ('MN0789', 5, 'VIN123456789', 4, 7, 'Azul', 'automatico', 5, 'Manual', 6);