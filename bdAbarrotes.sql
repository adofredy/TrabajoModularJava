create database bdAbarrotes;
use bdAbarrotes;

create table productos(
id INT identity PRIMARY KEY,
codigo varchar(12) UNIQUE,
nombre varchar(50),
precio_compra FLOAT,
precio_venta FLOAT,
cantidad_bodega INT,
minima_requerida INT,
maxima_permitida INT
)

use bdAbarrotes;

create table detalleProducto (
id INT identity PRIMARY KEY,
codigo varchar(12) UNIQUE,
nombre varchar(50),
cantidad INT,
precio_venta FLOAT,
fecha_venta varchar(12)  
)
Select * from detalleProducto;

INSERT INTO detalleProducto
(codigo,nombre,cantidad,precio_venta,fecha_venta)
VALUES ('P6758','Legumbres',50,11.0,'10/10/2066')

create table usuarios(
id INT identity PRIMARY KEY,
usuario varchar(30) UNIQUE,
clave varchar(20) UNIQUE,
)

INSERT INTO usuarios (usuario,clave)
VALUES ('soporte','123'),
('admin','admin')


INSERT INTO productos
(codigo,nombre,precio_compra,precio_venta,cantidad_bodega,
minima_requerida,maxima_permitida)
VALUES ('Pru3','huevos',501.0,1001.0,5,1,100);

INSERT INTO productos
(codigo,nombre,precio_compra,precio_venta,cantidad_bodega,
minima_requerida,maxima_permitida)
VALUES ('X123','zanahorias',201.0,109.0,5,2,200);

Select * from detalleProducto;

UPDATE detalleProducto set fecha_venta='10/10/2010' where id=14;
select * from detalleProducto where id=14;

UPDATE detalleProducto set fecha_venta='20/20/2020' where id=19;
select * from detalleProducto where id=14;

UPDATE detalleProducto set fecha_venta='15/15/2020' where id=3;
select * from detalleProducto where id=3;

UPDATE detalleProducto set fecha_venta='18/18/2020' where id=4;
select * from detalleProducto where id=4;

UPDATE detalleProducto set fecha_venta='28/28/2010' where id=5;
select * from detalleProducto where id=5;

UPDATE detalleProducto set fecha_venta='20/20/2010' where id=13;
select * from detalleProducto where id=13;

UPDATE detalleProducto set fecha_venta='28/28/2010' where id=17;
select * from detalleProducto where id=7;


select * from usuarios;
SELECT * from detalleProducto;
select * from productos;
--VALIDACION DEL LOGIN en método validarUsuario
SELECT * FROM usuarios WHERE usuario='admin' AND clave='admin';