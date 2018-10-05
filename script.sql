create database Tienda;

CREATE TABLE PROVEEDORES(
NOMBRE varchar(20),
DIRECCION varchar(60),
TELEFONO varchar(10),
ID_PROVEEDOR varchar(10) primary key);

CREATE TABLE CATEGORIAS(
ID_CATEGORIA varchar(10) primary key,
DESCRIPCION varchar(100));

CREATE TABLE CLIENTES(
NOMBRE varchar(20),
DIRECCION varchar(60),
TELEFONO varchar(10),
ID_CLIENTE varchar(10) primary key);

CREATE TABLE FACTURAS(
ID_FACTURA varchar(10) primary key,
FECHA Date,
Foreign key(Id_cliente) references CLIENTES(ID_CLIENTE));


CREATE TABLE PRODUCTOS(
ID_PRODUCTO varchar(10),
DESCRIPCION varchar(100),
PRECIO integer,
Foreign key(Id_categoria) references CATEGORIAS(ID_CATEGORIA),
Foreign key(id_proveedor) references PROVEEDORES(ID_PROVEEDOR));

CREATE TABLE VENTAS(
ID_VENTA varchar(10),
CANTIDAD integer,
Foreign key(Id_factura) references FACTURAS(ID_FACTURA),
Foreign key(Id_producto) references PRODUCTOS(ID_PRODUCTO));



