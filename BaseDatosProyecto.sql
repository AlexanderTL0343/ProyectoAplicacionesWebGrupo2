/*Se crea la base de datos */
drop schema if exists BaseDatosProyectoWeb;
drop user if exists usuario_a;
CREATE SCHEMA BaseDatosProyectoWeb;

/*Se crea un usuario para la base de datos llamado "usuario_prueba" y tiene la contraseña "Usuario_Clave."*/
create user 'usuario_a'@'%' identified by 'cliente_a';

/*Se asignan los prvilegios sobr ela base de datos TechShop al usuario creado */
grant all privileges on BaseDatosProyectoWeb.* to 'usuario_a'@'%';
flush privileges;


create table BaseDatosProyectoWeb.oferta(
  id_oferta int auto_increment primary key, 
  titulo varchar(60), 
  ruta_imagen varchar(1024),
  ruta_imagen_link varchar(1024))
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table BaseDatosProyectoWeb.usuario(
	id_usuario int not null auto_increment primary key,
	correo varchar(200), 
    contrasena varchar(50), 
    nombre varchar(50), 
    ciudad varchar(50), 
    pais varchar(50)
    )
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8mb4;
/*
create table BaseDatosProyectoWeb.tarjeta(
	id_tarjeta int auto_increment primary key,
	numero_tarjeta varchar(200), 
	nombre_titular varchar(200), 
	digitos_atras int,
	vencimiento_tarjeta varchar(200),
    id_usuario int not null,
    foreign key fk_tarjeta_usuario (id_usuario) references usuario(id_usuario)
    )
	ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8mb4;
*/
create table BaseDatosProyectoWeb.tarjeta(
	id_tarjeta int auto_increment primary key,
	numero_tarjeta varchar(200), 
	nombre_titular varchar(200), 
	digitos_atras int,
	vencimiento_tarjeta varchar(200)
    )
	ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8mb4;



/*CATEGORIAS*/
create table BaseDatosProyectoWeb.categoria (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  descripcion VARCHAR(30) NOT NULL,
  ruta_imagen varchar(1024),
  PRIMARY KEY (id_categoria))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;
/*PRODUCTOS*/
create table BaseDatosProyectoWeb.producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  id_categoria INT NOT NULL,
  descripcion VARCHAR(30) NOT NULL,  
  detalle VARCHAR(1600) NOT NULL, 
  precio double,
  ruta_imagen varchar(1024),
  PRIMARY KEY (id_producto),
  foreign key fk_producto_caregoria (id_categoria) references categoria(id_categoria)
);

create table BaseDatosProyectoWeb.promocion(
  id_promocion int auto_increment primary key, 
  ruta_imagen varchar(1024),
  ruta_imagen_link varchar(1024))
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO BaseDatosProyectoWeb.categoria (id_categoria,descripcion,ruta_imagen) VALUES 
('1','Enlatados', 'https://s1.eestatic.com/2021/10/18/ciencia/nutricion/620450765_212061138_1706x960.jpg'), 
('2','Leguminosas',  'https://th.bing.com/th/id/OIP.Zk7WD0CLbjEMQo0bjKlb5gHaE8?rs=1&pid=ImgDetMain'),
('3','Panaderia','https://buenprovecho.hn/wp-content/uploads/2020/09/pan-2.jpg');


INSERT INTO BaseDatosProyectoWeb.producto (id_producto,id_categoria,descripcion,detalle,precio,ruta_imagen) VALUES
(1,1,'Atun','Una lata de atun en aceite',2000,'https://s1.eestatic.com/2020/06/22/ciencia/nutricion/pescado-atun-nutricion_499711411_154276027_1706x960.jpg'),
(2,2,'Frijoles','Bolsa de frijoles negros',1800,'https://vivanda.vteximg.com.br/arquivos/ids/221275-618-618/20198991.jpg?v=637401943307800000'),
(3,3,'Queque seco','cantidad completa',3000,'https://3.bp.blogspot.com/-ORNN14Ri3o8/W4hgw0GNavI/AAAAAAAAIuE/nEXJFi-B_Fsi-CKvoNkXeiN5FaZQwFqjwCLcBGAs/s1600/20180723_140915.jpg');

INSERT INTO BaseDatosProyectoWeb.producto (id_producto,id_categoria,descripcion,detalle,precio,ruta_imagen) VALUES
(4,1,'Garbanzos','Lata de garbanzos',2000,'https://th.bing.com/th/id/OIP.-M61EqVLlkMg3i3DUlWO5AHaEl?rs=1&pid=ImgDetMain'),
(5,2,'Lentejas','categoria extra ',1900,'https://a1.soysuper.com/e2bad3d1f30412a4dcbbdfbec1b4b159.1500.0.0.0.wmark.fcdda59f.jpg'),
(6,3,'Orejas','orejas dulces',2000,'https://th.bing.com/th/id/OIP.u51HNU1rv_Cv0YKaaeIhwwHaE8?rs=1&pid=ImgDetMain');


INSERT INTO BaseDatosProyectoWeb.producto (id_producto,id_categoria,descripcion,detalle,precio,ruta_imagen) VALUES
(7,1,'Maiz dulce','Lata de maiz dulce',1800,'https://th.bing.com/th/id/R.f82828545067842abb6e0af97013be72?rik=Ul4pD%2b%2fLqUcZhA&pid=ImgRaw&r=0'),
(8,2,'Quinoa',' ',1900,'https://dicasdevidasaudavel.com/wp-content/uploads/2020/12/QUINOA-2.jpg'),
(9,2,'Chicharos',' ',1500,'https://th.bing.com/th/id/OIP.xRfv6Y3a1oC_Wy1Vp3GAZwHaEU?rs=1&pid=ImgDetMain'),
(10,1,'Sardinas','Lata de sardinas',2000,'https://www.thespruceeats.com/thmb/jkgW06-uCwrjVRUGR1EKSgV8RIc=/2122x1412/filters:no_upscale():max_bytes(150000):strip_icc()/BillVarie-afd48a18fd2c4e4586bd419e82f70424.jpg');

INSERT INTO BaseDatosProyectoWeb.producto (id_producto,id_categoria,descripcion,detalle,precio,ruta_imagen) VALUES
(11,3,'Gaticos','gaticos de panaderia dulces',900,'https://th.bing.com/th/id/OIP.FbW7dhpUlF_G1CUIpKmTKwHaEz?rs=1&pid=ImgDetMain'),
(12,3,'Arrolladitos','Arrolladitos caseros',1200,'https://www.nacion.com/resizer/uQvWl-NxtEhhvTyqeOKQy9zWNqU=/1440x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/gruponacion/FUHZLDGE7NEOHM2H65XZIVTGFY.jpg');

INSERT INTO BaseDatosProyectoWeb.usuario(id_usuario,correo,contrasena,nombre,ciudad,pais) VALUES
(1,'EdgarBen@gmail.com',123,'Edgar Benitez Fernandez','Heredia', 'Costa Rica'),
(2,'LeonardoMad@gmail.com',123,'Leonardo Madrigal Sanchez','Londres','Inglaterra'),
(3,'AlexanderLop@gmail.com',123,'Alexander Lopez Maniagua','Berlin','Alemania'),
(4,'PetunioRod@hotmail.com',123,'Petunio Rodriguez Rivas','New York','Estados Unidos');

/*
INSERT INTO BaseDatosProyectoWeb.tarjeta(id_tarjeta,numero_tarjeta,nombre_titular,digitos_atras, vencimiento_tarjeta,id_usuario) VALUES
(1,'1234 5678 7890 1011','Edgar Benitez Fernandez',123, '09/2027',1),
(2,'9822 8392 9302 3772','Leonardo Madrigal Sanchez',456, '05/2029',2),
(3,'8192 2893 7467 3745','Alexander Lopez Maniagua',789, '01/2026',3),
(4,'2873 6727 1273 9823','Petunio Rodriguez Rivas',872, '04/2028',4);
*/

INSERT INTO BaseDatosProyectoWeb.tarjeta(id_tarjeta,numero_tarjeta,nombre_titular,digitos_atras, vencimiento_tarjeta) VALUES
(1,'1234 5678 7890 1011','Edgar Benitez Fernandez',123, '09/2027'),
(2,'9822 8392 9302 3772','Leonardo Madrigal Sanchez',456, '05/2029'),
(3,'8192 2893 7467 3745','Alexander Lopez Maniagua',789, '01/2026'),
(4,'2873 6727 1273 9823','Petunio Rodriguez Rivas',872, '04/2028');


INSERT INTO BaseDatosProyectoWeb.oferta (id_oferta, titulo, ruta_imagen,ruta_imagen_link) VALUES 
(1, 'Burger king', 'https://th.bing.com/th/id/OIP.1wSkJE1ZSquIzcfK70ExZgHaHa?w=163&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.bk.com/'),
(2, 'Mcdonalds', 'https://th.bing.com/th/id/OIP.nxIU3GgsytvGbJ5rVo6gGAHaHa?w=155&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.mcdonalds.co.cr/mcdelivery?gad_source=1&gclid=Cj0KCQjw2uiwBhCXARIsACMvIU3BQavF5DS8GY_h58I6hnTzCwMVG9Jz0wE6r94bJH02FWlbk8aJei0aAuZYEALw_wcB'),
(3, 'KFC','https://th.bing.com/th/id/OIP.MNLqxqYONTsyMoGB2fXXjgHaHc?w=181&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.kfccostarica.cr/?utm_source=search&utm_medium=cpa&utm_campaign=kfc_cr_aonsearch_conversion&utm_term=conversion&utm_content=texto&gad_source=1&gclid=Cj0KCQjw2uiwBhCXARIsACMvIU1amuJVguQrc0UUDkvSUmNYhlxfdR_GYeSLGybXF69JN9MsdZkCIdoaAqOUEALw_wcB'),
(4, 'Starbucks', 'https://th.bing.com/th/id/OIP.nOPJjwNR0wNto9Pqdctn0AHaHf?w=175&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.starbucks.com/'),
(5, 'Taco Bell',  'https://th.bing.com/th/id/OIP.YjDpzS-ZA46Tn5snKxra-gHaI4?w=134&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://tacobell.cr/'),
(6, 'Rosti',  'https://th.bing.com/th/id/OIP.tB8aBrnqRhj6a53CGTZPbwHaJl?w=142&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.rosti.cr/pedir'),
(7, 'Pizza Hut',  'https://th.bing.com/th/id/OIP.qrcJM46iUIkvlEfsVTAHlwHaJW?w=148&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.pizzahutcr.com/external/#!/home'),
(8, 'Subway',  'https://th.bing.com/th/id/OIP.N_DRpnEMLPjZmAhk88EdqwHaJD?w=162&h=198&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.subwaycostarica.com/'),
(9, 'Outback Steakhouse',  'https://th.bing.com/th/id/OIP.NyzfVBr9iwh-GmtP9HQLmAAAAA?w=149&h=183&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://outbackcr.com/menu'),
(10, 'Hooters', 'https://th.bing.com/th/id/OIP.ABSdKsT1lnnTcfjI_5LV5QHaJQ?w=182&h=228&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.hooters.cr/menu');

INSERT INTO BaseDatosProyectoWeb.promocion (id_promocion, ruta_imagen,ruta_imagen_link) VALUES 
(1,  'https://th.bing.com/th/id/OIP.95YXC9T2Ge6q-0HQxVwncwHaJQ?pid=ImgDet&w=201&h=251&c=7&dpr=1,3.jpg','https://www.kfccostarica.cr/?utm_source=search&utm_medium=cpa&utm_campaign=kfc_cr_aonsearch_conversion&utm_term=conversion&utm_content=texto&gad_source=1&gclid=Cj0KCQjw2uiwBhCXARIsACMvIU1amuJVguQrc0UUDkvSUmNYhlxfdR_GYeSLGybXF69JN9MsdZkCIdoaAqOUEALw_wcB'),
(2,  'https://th.bing.com/th/id/OIP.XaaeO5myLa_nKPn3LL2VpgHaHa?pid=ImgDet&w=201&h=201&c=7.jpg','https://www.pizzahutcr.com/external/#!/home'),
(3,  'https://th.bing.com/th/id/OIP.vZZ_Okvuu_ynHLVM1flLzQAAAA?pid=ImgDet&w=201&h=201&c=7.jpg','https://www.bk.com/'),
(4,  'https://th.bing.com/th/id/OIP.R2jcVJXKFgXQSKPMJC0SVgHaHa?pid=ImgDet&w=201&h=201&c=7.jpg','https://tacobell.cr/'),
(5,  'https://th.bing.com/th/id/OIP.uADNJWD0bVnDyOeEPPiwWwHaHa?pid=ImgDet&w=201&h=201&c=7.jpg','https://www.subwaycostarica.com/'),
(6,  'https://th.bing.com/th/id/OIP.MsIOKEJaPMuifjzxpWaa8AHaHa?w=191&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7.jpg','https://www.starbucks.com/');

