CREATE DATABASE registro_jsp;

USE registro_jsp;

CREATE TABLE usuarios(

id INT AUTO_INCREMENT,
nombre VARCHAR(20) not null,
apellido VARCHAR(20) not null,
usuario VARCHAR(20) not null,
contrasena VARCHAR(20) not null,
pais VARCHAR(20) not null,
tecnologia VARCHAR(20) not null,
PRIMARY KEY (id)

);