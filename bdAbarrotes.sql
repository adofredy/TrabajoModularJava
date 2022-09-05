create database bdAbarrotes;
use bdAbarrotes;

INSERT INTO productos
(codigo,nombre,precio_compra,precio_venta,cantidad_bodega,
minima_requerida,maxima_permitida)
VALUES ('Pru3','huevos',501.0,1001.0,5,1,100);

create table productos(
id INT identity PRIMARY KEY,
codigo varchar(12) UNIQUE,
nombre varchar(50) ,
precio_compra FLOAT,
precio_venta FLOAT,
cantidad_bodega INT,
minima_requerida INT,
maxima_permitida INT
)
INSERT INTO usuarios (usuario,clave)
VALUES ('soporte','123')
--('admin','admin')

create table usuarios(
id INT identity PRIMARY KEY,
usuario varchar(30) UNIQUE,
clave varchar(20) UNIQUE,
)

select * from productos;
select * from usuarios;