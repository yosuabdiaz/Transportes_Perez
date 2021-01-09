--Creacion de las tablas--

--CREATE DATABASE encomiendasTortuguero;

CREATE TABLE cliente
(
    id_cliente		SERIAL NOT NULL,
	nombre			VARCHAR(20) NOT NULL,
	apellido1		VARCHAR(20) NOT NULL,
	apellido2		VARCHAR(20) NOT NULL,
	cedula			VARCHAR(20) NOT NULL,
	id_direccion	INTEGER NOT NULL
);

CREATE TABLE distribuidor
(
	id_distribuidor SERIAL NOT NULL,
	razon_comercial VARCHAR(20) NOT NULL,
	cedula_juridica VARCHAR(30) NOT NULL,
	razon_social	VARCHAR(20) NOT NULL,
	habitual		BOOLEAN NOT NULL,
	id_direccion	INTEGER NOT NULL
);

CREATE TABLE costo (
	id_costo SERIAL NOT NULL,
	id_envio INTEGER NOT NULL,
	monto    NUMERIC(10,2) NOT NULL
); 


CREATE TABLE detalle_costo
(
	id_detalle_costo SERIAL NOT NULL,
	id_costo		 INTEGER NOT NULL,
	descripcion		 VARCHAR(20) NOT NULL,
	monto			 NUMERIC(10,2) NOT NULL,
	fecha			 TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	pendiente		 BOOLEAN
);

CREATE TABLE empleado_x_departamento
(
	id_linea		SERIAL NOT NULL,
	id_departamento INTEGER NOT NULL,
	id_empleado		INTEGER NOT NULL
);

CREATE TABLE departamento
(
	id_departamento SERIAL NOT NULL,
	nombre			VARCHAR(20) NOT NULL
);

CREATE TABLE departamento_x_bodega
(
	id_linea		SERIAL NOT NULL,
	id_bodega		INTEGER NOT NULL,
	id_departamento INTEGER NOT NULL
);

CREATE TABLE salario
(
	id_salario		  SERIAL NOT NULL,
	id_empleado		  INTEGER NOT NULL,
	horas_trabajadas  NUMERIC(20) NOT NULL,
	pago_x_hora	 	  NUMERIC(20) NOT NULL,
	fecha_pago		  TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	horas_extra		  NUMERIC(20) NOT NULL,
	pago_x_hora_extra NUMERIC(20) NOT NULL
);

CREATE TABLE empleado
(
	id_empleado		 SERIAL NOT NULL,
	nombre			 VARCHAR(20) NOT NULL,
	apellido1		 VARCHAR(20) NOT NULL,
	apellido2		 VARCHAR(20) NOT NULL,
	fecha_nacimiento TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	id_tipo_empleado INTEGER NOT NULL,
	fecha_inicio	 TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

CREATE TABLE tipo_empleado
(
	id_tipo_empleado SERIAL NOT NULL,
	descripcion		 VARCHAR(20) NOT NULL
);

CREATE TABLE bodega
(
	id_bodega		SERIAL NOT NULL,
	tamano			NUMERIC(20) NOT NULL,
	id_direccion	INTEGER NOT NULL
);

CREATE TABLE telefono_bodega
(
	id_telefono		SERIAL NOT NULL,
	id_bodega		INTEGER NOT NULL,
	numero			NUMERIC(20) NOT NULL
);

CREATE TABLE telefono_empleado
(
	id_telefono		SERIAL NOT NULL,
	id_empleado		INTEGER NOT NULL,
	numero			NUMERIC(20) NOT NULL
);

CREATE TABLE telefono_cliente
(
	id_telefono		SERIAL NOT NULL,
	id_cliente		INTEGER NOT NULL,
	numero			NUMERIC(20) NOT NULL
);

CREATE TABLE telefono_distribuidor
(
	id_telefono		SERIAL NOT NULL,
	id_distribuidor		INTEGER NOT NULL,
	numero			NUMERIC(20) NOT NULL
);

CREATE TABLE telefono_taller
(
	id_telefono		SERIAL NOT NULL,
	id_taller		INTEGER NOT NULL,
	numero			NUMERIC(20) NOT NULL
);

CREATE TABLE envio
(
	id_envio		SERIAL NOT NULL,
	id_tipo_envio	INTEGER NOT NULL,
	fecha			TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	id_ruta			INTEGER NOT NULL,
	id_vehiculo		INTEGER NOT NULL,
	id_empleado		INTEGER NOT NULL,
	id_bodega		INTEGER NOT NULL,
--	id_costo		INTEGER NOT NULL,
	estado			VARCHAR(40) NOT NULL,
	ganancia		NUMERIC(10,2) NOT NULL
);

CREATE TABLE tipo_envio
(
	id_tipo_envio	SERIAL NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);

CREATE TABLE convenio
(
	id_convenio		SERIAL NOT NULL,
	id_cliente		INTEGER NOT NULL,
	descripcion		VARCHAR(20) NOT NULL,
	monto			NUMERIC(10,2) NOT NULL,
	fecha			TIMESTAMP	WITHOUT TIME ZONE NOT NULL,
	activo			BOOLEAN NOT NULL
);

CREATE TABLE facturas_x_envio
(
	id_linea		SERIAL NOT NULL,
	id_envio		INTEGER NOT NULL,
	id_factura		INTEGER NOT NULL
);

CREATE TABLE convenio_x_envio
(
	id_linea		SERIAL NOT NULL,
	id_envio		INTEGER NOT NULL,
	id_convenio		INTEGER NOT NULL
);

CREATE TABLE producto_x_envio
(
	id_linea		SERIAL NOT NULL,
	id_envio		INTEGER NOT NULL,
	id_producto		INTEGER NOT NULL
);

CREATE TABLE factura_distribuidor
(
	id_factura			SERIAL NOT NULL,
	id_distribuidor		INTEGER NOT NULL,
	id_cliente			INTEGER NOT NULL,
	factura_electronica NUMERIC(20) NOT NULL,
	monto				NUMERIC(10,2) NOT NULL,
	fecha				TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	bulto				NUMERIC(20) NOT NULL,
	ganancia			NUMERIC(20) NOT NULL
);

CREATE TABLE producto
(
	id_producto		SERIAL NOT NULL,
	descripcion		VARCHAR(20) NOT NULL,
	costo_envio		NUMERIC(10,2) NOT NULL
);

CREATE TABLE entrega_bodega
(
	id_entrega		SERIAL NOT NULL,
	id_bodega		INTEGER NOT NULL,
	bulto			NUMERIC(20) NOT NULL,
	estatus			VARCHAR(20) NOT NULL,
	fecha			TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

CREATE TABLE factura_x_entrega
(
	id_linea		SERIAL NOT NULL,
	id_entrega		INTEGER NOT NULL,
	id_factura		INTEGER NOT NULL
);

CREATE TABLE recoger
(
	id_recoger		SERIAL NOT NULL,
	id_direccion	INTEGER NOT NULL,
	id_distribuidor INTEGER NOT NULL,
	bulto			NUMERIC(20) NOT NULL,
	costo			NUMERIC(10,2) NOT NULL,
	fecha			TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	estatus			VARCHAR(20) NOT NULL
);

CREATE TABLE factura_x_recoger
(
	id_linea		SERIAL NOT NULL,
	id_recoger		INTEGER NOT NULL,
	id_factura		INTEGER NOT NULL
);

CREATE TABLE direccion
(
	id_direccion	 SERIAL NOT NULL,
	id_codigo	 INTEGER NOT NULL,
	descripcion		 VARCHAR(20) NOT NULL
);
/***/
CREATE TABLE provincia
(
	id_provincia	SERIAL NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);
/**/
CREATE TABLE distrito
(
	id_distrito		SERIAL NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);

CREATE TABLE canton
(
	id_canton		SERIAL NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);

CREATE TABLE codigo_postal
(
	id_codigo		SERIAL NOT NULL,
	id_provincia	INTEGER NOT NULL,
	id_distrito		INTEGER NOT NULL,
	id_canton		INTEGER NOT NULL
);

CREATE TABLE ruta
(
	id_ruta			SERIAL NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);

CREATE TABLE punto
(
	id_punto		SERIAL NOT NULL,
	id_direccion	INTEGER NOT NULL,
	descripcion		VARCHAR(20) NOT NULL,
	latitud			FLOAT(40) NOT NULL,
	longitud		FLOAT(40) NOT NULL,
	altitud			FLOAT(40) NOT NULL,
	es_inicio		BOOLEAN NOT NULL,
	es_final		BOOLEAN NOT NULL
);

CREATE TABLE puntos_x_ruta
(
	id_linea		SERIAL NOT NULL,
	id_ruta			INTEGER NOT NULL,
	id_punto		INTEGER NOT NULL
);

CREATE TABLE tipo_combustible
(
	id_tipo_combustible	SERIAL NOT NULL,
	descripcion			VARCHAR(20) NOT NULL
);

CREATE TABLE vehiculo
(
	id_vehiculo		 SERIAL NOT NULL,
	id_tipo_vehiculo 	INTEGER NOT NULL,
	matricula		 NUMERIC(20) NOT NULL,
	estado			 VARCHAR(40) NOT NULL,
	valor_fiscal	 NUMERIC(10,2) NOT NULL,
	marca			 VARCHAR(40) NOT NULL,
	modelo			 VARCHAR(40) NOT NULL,
	marchamo		 BOOLEAN NOT NULL,
	revision_tecnica BOOLEAN NOT NULL,
	peso			 NUMERIC(20) NOT NULL
);

CREATE TABLE tipo_vehiculo
(
	id_tipo_vehiculo 	SERIAL NOT NULL,
	id_tipo_combustible	INTEGER NOT NULL,
	descripcion			VARCHAR(20) NOT NULL,
	eje					NUMERIC(20) NOT NULL,
	pasajeros			NUMERIC(40) NOT NULL,
	congelador			BOOLEAN NOT NULL
);

CREATE TABLE taller
(
	id_taller		SERIAL NOT NULL,
	id_direccion	INTEGER NOT NULL,
	descripcion		VARCHAR(20) NOT NULL,
	razon_comercial VARCHAR(40) NOT NULL,
	razon_social	VARCHAR(40) NOT NULL,
	cedula_juridica VARCHAR(30) NOT NULL
);

CREATE TABLE mantenimiento
(
	id_mantenimiento SERIAL NOT NULL,
	id_taller		 INTEGER NOT NULL,
	id_vehiculo		 INTEGER NOT NULL,
	fecha			 TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	monto			 NUMERIC(10,2) NOT NULL,
	nota_general	 VARCHAR(20) NOT NULL
);

CREATE TABLE tipo_mantenimiento
(
	id_tipo_mantenimiento	SERIAL NOT NULL,
	descripcion				VARCHAR(20) NOT NULL
);

CREATE TABLE detalle_mantenimiento
(
	id_detalle_mantenimiento SERIAL NOT NULL,
	id_mantenimiento		 INTEGER NOT NULL,
	id_tipo_mantenimiento	 INTEGER NOT NULL,
	descripcion				 VARCHAR(20) NOT NULL,
	monto					 NUMERIC(10,2) NOT NULL,
	calificacion			 VARCHAR(20) NOT NULL
);

CREATE TABLE correo_cliente
(
	id_correo		SERIAL NOT NULL,
	id_cliente		INTEGER NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);

CREATE TABLE correo_distribuidor
(
	id_correo		SERIAL NOT NULL,
	id_distribuidor		INTEGER NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);

CREATE TABLE correo_empleado
(
	id_correo		SERIAL NOT NULL,
	id_empleado		INTEGER NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);

CREATE TABLE correo_bodega
(
	id_correo		SERIAL NOT NULL,
	id_bodega		INTEGER NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);

CREATE TABLE correo_taller
(
	id_correo		SERIAL NOT NULL,
	id_taller		INTEGER NOT NULL,
	descripcion		VARCHAR(20) NOT NULL
);


