-- Crear base de datos
CREATE DATABASE importacion_vehiculos;
-- Conectarse a la base de datos
\c importacion_vehiculos;

-- Crear tabla Lote de Importación
CREATE TABLE lote_importacion (
    id_lote SERIAL PRIMARY KEY,
    codigo_lote VARCHAR(20) UNIQUE NOT NULL,
    fecha_llegada DATE NOT NULL,
    pais_origen VARCHAR(50) NOT NULL
);

-- Crear tabla Concesionario
CREATE TABLE concesionario (
    id_concesionario SERIAL PRIMARY KEY,
    nombre_comercial VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    persona_contacto VARCHAR(100)
);

-- Crear tabla Vehículo
CREATE TABLE vehiculo (
    num_serie VARCHAR(30) PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    anio_fabricacion INT NOT NULL,
    velocidad_max INT,
    precio_declarado NUMERIC(12,2),
    fecha_llegada DATE,
    pais_origen VARCHAR(50),
    id_lote INT REFERENCES lote_importacion(id_lote),
    id_concesionario INT REFERENCES concesionario(id_concesionario)
);

