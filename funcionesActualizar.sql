--FUNCIONES DE ACTUALIZAR

--TABLA BODEGA
CREATE OR REPLACE FUNCTION actualizar_tamanoBodega (identificador INTEGER, tam NUMERIC) RETURNS void AS
$$
	UPDATE bodega SET tamano = tam WHERE id_bodega = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_tamanoBodega (1, 150);

CREATE OR REPLACE FUNCTION actualizar_idDireccionBodega (identificador INTEGER, idDireccion INTEGER) RETURNS void AS
$$
	UPDATE bodega SET id_direccion = idDireccion WHERE id_bodega = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDireccionBodega (1, 1)
-------------------------------------------------------------------------------------------------------------
--TABLA CANTON
CREATE OR REPLACE FUNCTION actualizar_nombreCanton (identificador INTEGER, nombre VARCHAR) RETURNS void AS
$$
	UPDATE canton SET descripcion = nombre WHERE id_canton = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_nombreCanton (8, 'Garabito');
---------------------------------------------------------------------------------------------
--TABLA CLIENTE
CREATE OR REPLACE FUNCTION actualizar_nombreCliente (identificador INTEGER, nom VARCHAR) RETURNS void AS
$$
	UPDATE cliente SET nombre = nom WHERE id_cliente = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_nombreCliente (8, 'Daniel');

CREATE OR REPLACE FUNCTION actualizar_primerApellidoCliente (identificador INTEGER, apellido VARCHAR) RETURNS void AS
$$
	UPDATE cliente SET apellido1 = apellido WHERE id_cliente = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_primerApellidoCliente (8, 'Martinez');

CREATE OR REPLACE FUNCTION actualizar_segundoApellidoCliente (identificador INTEGER, apellido VARCHAR) RETURNS void AS
$$
	UPDATE cliente SET apellido2 = apellido WHERE id_cliente = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_segundoApellidoCliente (8, 'Martinez');

CREATE OR REPLACE FUNCTION actualizar_cedulaCliente (identificador INTEGER, numCedula VARCHAR) RETURNS void AS
$$
	UPDATE cliente SET cedula = numCedula WHERE id_cliente = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_cedulaCliente (8, '1145535466');

CREATE OR REPLACE FUNCTION actualizar_idDireccionCliente (identificador INTEGER, idDireccion INTEGER) RETURNS void AS
$$
	UPDATE cliente SET id_direccion = idDireccion WHERE id_cliente = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDireccionCliente (8, 4);
-------------------------------------------------------------------------------------------------------------
--TABLA CODIGO POSTAL
CREATE OR REPLACE FUNCTION actualizar_idProvinciaCP (identificador INTEGER, idProvincia INTEGER) RETURNS void AS
$$
	UPDATE codigo_postal SET id_provincia = idProvincia WHERE id_codigo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idProvinciaCP (8, 7); 

CREATE OR REPLACE FUNCTION actualizar_idDistritoCP (identificador INTEGER, idDistrito INTEGER) RETURNS void AS
$$
	UPDATE codigo_postal SET id_distrito = idDistrito WHERE id_codigo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDistritoCP (8, 6);

CREATE OR REPLACE FUNCTION actualizar_idCantonCP (identificador INTEGER, idCanton INTEGER) RETURNS void AS
$$
	UPDATE codigo_postal SET id_canton = idCanton WHERE id_codigo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idCantonCP (8, 5);
--------------------------------------------------------------------------------------------
-- TABLA CONVENIO
CREATE OR REPLACE FUNCTION actualizar_idClienteConvenio (identificador INTEGER, idCliente INTEGER) RETURNS void AS
$$
	UPDATE convenio SET id_cliente = idCliente WHERE id_convenio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idClienteConvenio (4, 5);

CREATE OR REPLACE FUNCTION actualizar_descripcionConvenio (identificador INTEGER, descrip VARCHAR) RETURNS void AS
$$ 
	UPDATE convenio SET descripcion = descrip WHERE id_convenio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionConvenio (4, 'familiar');

CREATE OR REPLACE FUNCTION actualizar_montoConvenio (identificador INTEGER, costo NUMERIC) RETURNS void AS
$$
	UPDATE convenio SET monto = costo WHERE id_convenio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_montoConvenio (4, 50000);

CREATE OR REPLACE FUNCTION actualizar_fechaConvenio (identificador INTEGER, fechaInicial TIMESTAMP WITHOUT TIME ZONE) RETURNS void AS
$$
	UPDATE convenio SET fecha = fechaInicial WHERE id_convenio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaConvenio (4, '2020-12-15');

CREATE OR REPLACE FUNCTION actualizar_esActivoConvenio (identificador INTEGER, esActivo BOOLEAN)RETURNS void AS
$$
	UPDATE convenio SET activo = esActivo WHERE id_convenio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_esActivoConvenio (4, false);
-------------------------------------------------------------------------------------------------------------------------------------------------
-- TABLA CONVENIO X ENVIO
CREATE OR REPLACE FUNCTION actualizar_idEnvioCxE(identificador INTEGER, idEnvio INTEGER) RETURNS void AS
$$
	UPDATE convenio_x_envio SET id_envio = idEnvio WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEnvioCxE(11, 3)

CREATE OR REPLACE FUNCTION actualizar_idConvenioCxE (identificador INTEGER, idConvenio INTEGER)RETURNS void AS
$$
	UPDATE convenio_x_envio SET id_convenio = idConvenio WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idConvenioCxE (11, 3);
-----------------------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO BODEGA
CREATE OR REPLACE FUNCTION actualizar_idBodegaCorreo (identificador INTEGER, idBodega INTEGER) RETURNS void AS
$$
	UPDATE correo_bodega SET id_bodega = idBodega WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idBodegaCorreo (3, 3);

CREATE OR REPLACE FUNCTION actualizar_correoBodega (identificador INTEGER, email VARCHAR) RETURNS void AS
$$
	UPDATE correo_bodega SET descripcion = email WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_correoBodega (3, 'correo@correo.com');
------------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO CLIENTE
CREATE OR REPLACE FUNCTION actualizar_idClienteCorreo (identificador INTEGER, idCliente INTEGER)RETURNS void AS
$$
	UPDATE correo_cliente SET id_cliente = idCLiente WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idClienteCorreo (2, 3);

CREATE OR REPLACE FUNCTION actualizar_correoCliente (identificador INTEGER, email VARCHAR)RETURNS void AS
$$
	UPDATE correo_cliente SET descripcion = email WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_correoCliente (2, 'cliente@correo.com');
------------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO DISTRIBUIDOR
CREATE OR REPLACE FUNCTION actualizar_idDistribuidorCorreo (identificador INTEGER, idDistribuidor INTEGER)RETURNS void AS
$$
	UPDATE correo_distribuidor SET id_distribuidor = idDistribuidor WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDistribuidorCorreo (2, 3);

CREATE OR REPLACE FUNCTION actualizar_correoDistribuidor (identificador INTEGER, email VARCHAR)RETURNS void AS
$$
	UPDATE correo_distribuidor SET descripcion = email WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_correoDistribuidor (2, 'dis@correo.com');
-------------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO EMPLEADO
CREATE OR REPLACE FUNCTION actualizar_idEmpleadoCorreo (identificador INTEGER, idEmpleado INTEGER)RETURNS void AS
$$
	UPDATE correo_empleado SET id_empleado = idEmpleado WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEmpleadoCorreo (2, 3);

CREATE OR REPLACE FUNCTION actualizar_correoEmpleado (identificador INTEGER, email VARCHAR)RETURNS void AS
$$
	UPDATE correo_empleado SET descripcion = email WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_correoEmpleado (2, 'empleado@correo.com');
--------------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO TALLER
CREATE OR REPLACE FUNCTION actualizar_idTallerCorreo (identificador INTEGER, idTaller INTEGER)RETURNS void AS
$$
	UPDATE correo_taller SET id_taller = idTaller WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idTallerCorreo (2, 3);

CREATE OR REPLACE FUNCTION actualizar_correoTaller (identificador INTEGER, email VARCHAR)RETURNS void AS
$$
	UPDATE correo_taller SET descripcion = email WHERE id_correo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_correoTaller (2, 'taller@correo.com');
-------------------------------------------------------------------------------------------------------------------------------------
--TABLA COSTO
CREATE OR REPLACE FUNCTION actualizar_idEnvioCosto (identificador INTEGER, idEnvio INTEGER) RETURNS void AS
$$
	UPDATE costo SET id_envio = idEnvio WHERE id_costo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEnvioCosto (8, 8);

CREATE OR REPLACE FUNCTION actualizar_montoCosto (identificador INTEGER, pmonto NUMERIC) RETURNS void AS
$$
	UPDATE costo SET monto = pmonto WHERE id_costo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_montoCosto (8, 20000);
-------------------------------------------------------------------------------------------------------------------------------
