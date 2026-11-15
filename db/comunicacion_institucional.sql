-- conjunto de caracteres utf8mb4 [1 a 4 bytes por caracter] es compatible con el rango Unicode completo.
-- utf8mb4_unicode_ci más preciso para procesar texto en distintos idiomas.

-- fijo el conjunto de caracteres y la intercalación de la conexión actual
SET NAMES 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

CREATE DATABASE IF NOT EXISTS comunicacion_institucional CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE comunicacion_institucional;

CREATE TABLE IF NOT EXISTS usuarios (

    correo_electronico VARCHAR(255) PRIMARY KEY,
    contrasenia VARCHAR(100),
    nombre VARCHAR(100),
    rol VARCHAR(20)

);

CREATE TABLE IF NOT EXISTS orientaciones (

    nombre VARCHAR(100) PRIMARY KEY

);

CREATE TABLE IF NOT EXISTS grupos (

    nombre VARCHAR(100) PRIMARY KEY,
    turno VARCHAR(20),
    nombre_orientacion VARCHAR(100),
    FOREIGN KEY (nombre_orientacion) REFERENCES orientaciones(nombre)

);

CREATE TABLE IF NOT EXISTS materias (

    nombre VARCHAR(100) PRIMARY KEY

);

CREATE TABLE IF NOT EXISTS dias (

    nombre VARCHAR(10) PRIMARY KEY

);

CREATE TABLE IF NOT EXISTS clases (

    identificador INT AUTO_INCREMENT PRIMARY KEY,
    hora_inicio TIME,
    hora_fin TIME,
    nombre_dia VARCHAR(10),
    nombre_grupo VARCHAR(100),
    nombre_materia VARCHAR(100),
    FOREIGN KEY (nombre_dia) REFERENCES dias(nombre),
    FOREIGN KEY (nombre_grupo) REFERENCES grupos(nombre),
    FOREIGN KEY (nombre_materia) REFERENCES materias(nombre)

);

CREATE TABLE IF NOT EXISTS estudiantes (

    correo_electronico VARCHAR(255) PRIMARY KEY,
    nombre_grupo VARCHAR(100),
    FOREIGN KEY (correo_electronico) REFERENCES usuarios(correo_electronico),
    FOREIGN KEY (nombre_grupo) REFERENCES grupos(nombre)

);

CREATE TABLE IF NOT EXISTS administrativos (

    correo_electronico VARCHAR(255) PRIMARY KEY,
    FOREIGN KEY (correo_electronico) REFERENCES usuarios(correo_electronico)

);

CREATE TABLE IF NOT EXISTS docentes (

    correo_electronico VARCHAR(255) PRIMARY KEY,
    FOREIGN KEY (correo_electronico) REFERENCES usuarios(correo_electronico)

);

CREATE TABLE IF NOT EXISTS notificaciones(

    identificador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(1500),
    publico VARCHAR(20),
    fecha DATE

);

CREATE TABLE IF NOT EXISTS administrativo_notificacion(

    correo_administrativo VARCHAR(255),
    identificador_notificacion INT,
    PRIMARY KEY (correo_administrativo, identificador_notificacion),
    FOREIGN KEY (correo_administrativo) REFERENCES administrativos(correo_electronico),
    FOREIGN KEY (identificador_notificacion) REFERENCES notificaciones(identificador)

);

CREATE TABLE IF NOT EXISTS eventos(

    identificador INT PRIMARY KEY,
    hora_inicio TIME,
    hora_fin TIME,
    fecha_inicio DATE,
    fecha_fin DATE,
    FOREIGN KEY (identificador) REFERENCES notificaciones(identificador)

);

CREATE TABLE IF NOT EXISTS avisos(

    identificador INT PRIMARY KEY,
    FOREIGN KEY (identificador) REFERENCES notificaciones(identificador)

);

CREATE TABLE IF NOT EXISTS grupo_materia (

    nombre_grupo VARCHAR(100),
    nombre_materia VARCHAR(100),
    correo_docente VARCHAR(255),
    PRIMARY KEY (nombre_grupo, nombre_materia),
    FOREIGN KEY (nombre_grupo) REFERENCES grupos(nombre),
    FOREIGN KEY (nombre_materia) REFERENCES materias(nombre),
    FOREIGN KEY (correo_docente) REFERENCES docentes(correo_electronico)

);