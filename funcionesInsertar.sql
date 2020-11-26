CREATE OR REPLACE FUNCTION insertar_bodega(tamano NUMERIC, id_direccion INTEGER) RETURNS void AS
$$
	INSERT INTO bodega  (tamano, id_direccion)
	VALUES				(tamano, id_direccion);
$$ LANGUAGE sql;

--SELECT insertar_bodega(300,2);
---------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_canton(descripcion VARCHAR) RETURNS void AS
$$
	INSERT INTO canton 	(descripcion)
	VALUES				(descripcion);
$$ LANGUAGE sql;
	
--SELECT insertar_canton('Garabito');
---------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_cliente(nombre VARCHAR, primerApellido VARCHAR, segundoApellido VARCHAR, cedula VARCHAR, id_direccion INTEGER) RETURNS void AS
$$
	INSERT INTO cliente	(nombre, apellido1, apellido2, cedula, id_direccion)
	VALUES				(nombre, primerApellido, segundoApellido, cedula, id_direccion);
$$ LANGUAGE sql;

--SELECT insertar_cliente('clientePrueba', 'Murillo', 'Alfaro', '114550877', 3);
------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_codigoPostal(id_provincia INTEGER, id_distrito INTEGER, id_canton INTEGER) RETURNS void AS
$$
	INSERT INTO codigo_postal 	(id_provincia, id_distrito, id_canton)
	VALUES						(id_provincia,id_distrito,id_canton);
$$ LANGUAGE sql;

--SELECT insertar_codigoPostal(2,7,4);
----------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_convenio(id_cliente INTEGER, descrripcion VARCHAR, monto NUMERIC, fecha TIMESTAMP WITHOUT TIME ZONE, activo BOOLEAN) RETURNS void AS
$$
	INSERT INTO convenio(id_cliente, descripcion, monto)
$$ LANGUAGE sql;


------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_convenioPorEnvio(id_envio INTEGER, id_convenio INTEGER) RETURNS void AS
$$
	INSERT INTO convenio_x_envio(id_envio, id_convenio)
	VALUES						(id_envio, id_convenio);
$$ LANGUAGE sql;

--SELECT insertar_convenioPorEnvio(2, 4);
---------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_correoBodega(id_bodega INTEGER, descripcion VARCHAR) RETURNS void AS
$$
	INSERT INTO correo_bodega	(id_bodega, descripcion)
	VALUES						(id_bodega, descripcion);
$$ LANGUAGE sql;

--SELECT insertar_correoBodega(3, 'correobodega3');
----------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_correoCliente(id_cliente INTEGER, descripcion VARCHAR) RETURNS void AS
$$
	INSERT INTO correo_cliente	(id_cliente, descripcion)
	VALUES						(id_cliente, descripcion);
$$ LANGUAGE sql;

--SELECT insertar_correoCliente(2, 'correoCliente2');
-------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_correoDistribuidor (id_distribuidor INTEGER, descripcion VARCHAR) RETURNS void AS
$$
	INSERT INTO correo_distribuidor	(id_distribuidor, descripcion)
	VALUES							(id_distribuidor, descripcion);
$$ LANGUAGE sql;

--SELECT insertar_correoDistribuidor(2, 'correoDistribuidor2');
---------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_correoEmpleado	(id_empleado INTEGER, descripcion VARCHAR) RETURNS void AS
$$
	INSERT INTO correo_empleado	(id_empleado, descripcion)
	VALUES						(id_empleado, descripcion);
$$ LANGUAGE sql;

--SELECT insertar_correoEmpleado (2, 'correoEmpleado2');
---------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_correoTaller (id_taller INTEGER, descripcion VARCHAR) RETURNS void AS
$$
	INSERT INTO correo_taller	(id_taller, descripcion)
	VALUES						(id_taller, descripcion);
$$ LANGUAGE sql;

--SELECT insertar_correoTaller(2, 'correoTaller2');
--------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_costo (id_envio INTEGER, monto NUMERIC) RETURNS void AS
$$
	INSERT INTO costo	(id_envio, monto)
	VALUES				(id_envio, monto);
$$ LANGUAGE sql;

--SELECT insertar_costo (8, 100000);
----------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_departamento (nombre VARCHAR) RETURNS void AS
$$
	INSERT INTO departamento	(nombre)
	VALUES						(nombre);
$$ LANGUAGE sql;

--SELECT insertar_departamento ('Recursos humanos');
-----------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_departamentoPorBodega (id_bodega INTEGER, id_departamento INTEGER) RETURNS void AS
$$
	INSERT INTO departamento_x_bodega (id_bodega, id_departamento)
	VALUES								(id_bodega, id_departamento);
$$ LANGUAGE sql;

--SELECT insertar_departamentoPorBodega (3, 1);
-------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_detalleCosto (id_costo INTEGER, descripcion VARCHAR, monto NUMERIC, fecha TIMESTAMP WITHOUT TIME ZONE, pendiente BOOLEAN) RETURNS void AS
$$
	INSERT INTO detalle_costo	(id_costo, descripcion, monto, fecha, pendiente)
	VALUES						(id_costo, descripcion, monto, fecha, pendiente);
$$ LANGUAGE sql;

--SELECT insertar_detalleCosto (4, 'comida', 10000, '05/01/2020', false);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_detalleMantenimiento (id_mantenimiento INTEGER, id_tipoMantenimiento INTEGER, descripcion VARCHAR, monto NUMERIC, calificacion VARCHAR) RETURNS void AS
$$
	INSERT INTO detalle_mantenimiento	(id_mantenimiento, id_tipo_mantenimiento, descripcion, monto, calificacion)
	VALUES								(id_mantenimiento, id_tipoMantenimiento, descripcion, monto, calificacion);
$$ LANGUAGE sql;

--SELECT insertar_detalleMantenimiento (1, 3, 'cambio aceite', 10000, 'buena');
--------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_direccion (id_codigo INTEGER, descripcion VARCHAR) RETURNS void AS
$$
	INSERT INTO direccion	(id_codigo, descripcion)
	VALUES					(id_codigo, descripcion);
$$ LANGUAGE sql;

--SELECT insertar_direccion (8, 'direccion8');
-------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_distribuidor (razon_comercial VARCHAR, cedula_juridica VARCHAR, razon_social VARCHAR, habitual BOOLEAN, id_direccion INTEGER) RETURNS void AS
$$
	INSERT INTO distribuidor	(razon_comercial, cedula_juridica, razon_social, habitual, id_direccion)
	VALUES						(razon_comercial, cedula_juridica, razon_social, habitual, id_direccion);
$$ LANGUAGE sql;

--SELECT insertar_distribuidor ('RC_distribuidor4', '12312234', 'RS_distribuidor4', false, 4);
-----------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_distrito (descripcion VARCHAR) RETURNS void AS
$$
	INSERT INTO distrito	(descripcion)
	VALUES					(descripcion);
$$ LANGUAGE sql;

--SELECT insertar_distrito ('Jaco');
-------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_empleado (nombre VARCHAR, primerApellido VARCHAR, segundoApellido VARCHAR, fecha_nacimiento TIMESTAMP WITHOUT TIME ZONE, id_tipoEmpleado INTEGER, fecha_incorporacion TIMESTAMP WITHOUT TIME ZONE) RETURNS void AS
$$
	INSERT INTO empleado	(nombre, apellido1, apellido2, fecha_nacimiento, id_tipo_empleado, fecha_inicio)
	VALUES					(nombre, primerApellido, segundoApellido, fecha_nacimiento, id_tipoEmpleado, fecha_incorporacion);
$$ LANGUAGE sql;

--SELECT insertar_empleado ('empleado 7', 'apellido1', 'apellido2', '05/09/1980', 3, '10/05/2020');
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_empleadoPorDepartamento (id_departamento INTEGER, id_empleado INTEGER) RETURNS void AS
$$
	INSERT INTO empleado_x_departamento	(id_departamento, id_empleado)
	VALUES								(id_departamento, id_empleado);
$$ LANGUAGE sql;

--SELECT insertar_empleadoPorDepartamento(4, 7);
-----------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_entregaBodega (id_bodega INTEGER, cantidadBultos NUMERIC, estatus VARCHAR, fecha TIMESTAMP WITHOUT TIME ZONE) RETURNS void AS
$$
	INSERT INTO entrega_bodega	(id_bodega, bulto, estatus, fecha)
	VALUES						(id_bodega, cantidadBultos, estatus, fecha);
$$ LANGUAGE sql;

--SELECT insertar_entregaBodega (3, 25, 'entregado', '10/10/2020');
-----------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_envio (id_tipoEnvio INTEGER, fecha TIMESTAMP WITHOUT TIME ZONE, id_ruta INTEGER, id_vehiculo INTEGER, id_empleado INTEGER, id_bodega INTEGER, estado VARCHAR, ganancia NUMERIC) RETURNS void AS
$$
	INSERT INTO envio	(id_tipo_envio, fecha, id_ruta, id_vehiculo, id_empleado, id_bodega, estado, ganancia)
	VALUES				(id_tipoEnvio, fecha, id_ruta, id_vehiculo, id_empleado, id_bodega, estado, ganancia);
$$ LANGUAGE sql;

--SELECT insertar_envio (1, '03/04/2020', 1, 1, 2, 1, 'entregado', 7000000);
-----------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION insertar_facturaDistribuidor (id_distribuidor INTEGER, id_cliente INTEGER, factura_electronica NUMERIC, monto NUMERIC, fecha TIMESTAMP WITHOUT TIME ZONE, cantidadBultos NUMERIC, ganancia NUMERIC) RETURNS void AS
$$
	INSERT INTO factura_distribuidor 	(id_distribuidor, id_cliente, factura_electronica, monto, fecha, bulto, ganancia)
	VALUES								(id_distribuidor, id_cliente, factura_electronica, monto, fecha, cantidadBultos, ganancia);
$$ LANGUAGE sql;

--SELECT insertar_facturaDistribuidor (6, 2, 9982848822, 50000, '02/10/2020', 7, 50000);
------------------------------------------------------------------------------------------------------------------------------------------


