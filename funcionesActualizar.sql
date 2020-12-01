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
--TABLA DEPARTAMENTO
CREATE OR REPLACE FUNCTION actualizar_nombreDepartamento (identificador INTEGER, pnombre VARCHAR)RETURNS void AS
$$
	UPDATE departamento SET nombre = pnombre WHERE id_departamento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_nombreDepartamento (4, 'Recursos Humanos');
------------------------------------------------------------------------------------------------------------------------------
--TABLA DEPARTAMENTO X BODEGA
CREATE OR REPLACE FUNCTION actualizar_idBodegaDxB (identificador INTEGER, idBodega INTEGER) RETURNS void AS
$$
	UPDATE departamento_x_bodega SET id_bodega = idBodega WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idBodegaDxB (7, 3)
------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION actualizar_idDepartamentoDxB (identificador INTEGER, idDepartamento INTEGER) RETURNS void AS
$$
	UPDATE departamento_x_bodega SET id_departamento = idDepartamento WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDepartamentoDxB (7, 2);
------------------------------------------------------------------------------------------------------------------------------
--TABLA DETALLE COSTO
CREATE OR REPLACE FUNCTION actualizar_idCostoDC (identificador INTEGER, idCosto INTEGER) RETURNS void AS
$$
	UPDATE detalle_costo SET id_costo = idCosto WHERE id_detalle_costo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idCostoDC (10, 4)

CREATE OR REPLACE FUNCTION actualizar_descripcionDC (identificador INTEGER, pdescripcion VARCHAR)RETURNS void AS
$$
	UPDATE detalle_costo SET descripcion = pdescripcion WHERE id_detalle_costo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionDC (10, 'gasolina')

CREATE OR REPLACE FUNCTION actualizar_montoDC (identificador INTEGER, pmonto NUMERIC) RETURNS void AS
$$
	UPDATE detalle_costo SET monto = pmonto WHERE id_detalle_costo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_montoDC (10, 5000);

CREATE OR REPLACE FUNCTION actualizar_fechaDC (identificador INTEGER, pfecha TIMESTAMP WITHOUT TIME ZONE) RETURNS void AS
$$
	UPDATE detalle_costo SET fecha = pfecha WHERE id_detalle_costo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaDC (10, '2020-11-19');

CREATE OR REPLACE FUNCTION actualizar_pendienteDC (identificador INTEGER, esPendiente BOOLEAN) RETURNS void AS
$$
	UPDATE detalle_costo SET pendiente = esPendiente WHERE id_detalle_costo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_pendienteDC (10, true);
--------------------------------------------------------------------------------------------------------------------------------
--TABLA DETALLE MANTENIMIENTO
CREATE OR REPLACE FUNCTION actualizar_idMantenimientoDM (identificador INTEGER, pIdMantenimiento INTEGER)RETURNS void AS
$$
	UPDATE detalle_mantenimiento SET id_mantenimiento = pIdMantenimiento WHERE id_detalle_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idMantenimientoDM (4, 4);

CREATE OR REPLACE FUNCTION actualizar_idTipoMantenimientoDM (identificador INTEGER, pIdTipoMantenimiento INTEGER)RETURNS void AS
$$
	UPDATE detalle_mantenimiento SET id_tipo_mantenimiento = pIdTipoMantenimiento WHERE id_detalle_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idTipoMantenimientoDM (4, 2);

CREATE OR REPLACE FUNCTION actualizar_descripcionDM (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE detalle_mantenimiento SET descripcion = pDescripcion WHERE id_detalle_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionDM (4, 'cambio transmicion');

CREATE OR REPLACE FUNCTION actualizar_montoDM (identificador INTEGER, pMonto NUMERIC) RETURNS void AS
$$
	UPDATE detalle_mantenimiento SET monto = pMonto WHERE id_detalle_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_montoDM (4, 200000);

CREATE OR REPLACE FUNCTION actualizar_calificacionDM (identificador INTEGER, pCalificacion VARCHAR) RETURNS void AS
$$
	UPDATE detalle_mantenimiento SET calificacion = pCalificacion WHERE id_detalle_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_calificacionDM (4, 'regular'); 
-----------------------------------------------------------------------------------------------------------------------------------------
--TABLA DIRECCION
CREATE OR REPLACE FUNCTION actualizar_idCodigoDireccion (identificador INTEGER, idCodigo INTEGER) RETURNS void AS
$$
	UPDATE direccion SET id_codigo = idCodigo WHERE id_direccion = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idCodigoDireccion (8, 8);

CREATE OR REPLACE FUNCTION actualizar_descripcionDireccion (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE direccion SET descripcion = pDescripcion WHERE id_direccion = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionDireccion (8, 'Lapa');
--------------------------------------------------------------------------------------------------------------------------------
--TABLA DISTRIBUIDOR
CREATE OR REPLACE FUNCTION actualizar_razonComercialDistribuidor (identificador INTEGER, razonComercial VARCHAR)RETURNS void AS
$$
	UPDATE distribuidor SET razon_comercial = razonComercial WHERE id_distribuidor = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_razonComercialDistribuidor (12, 'RazonC4');

CREATE OR REPLACE FUNCTION actualizar_cedulaJuridicaDistribuidor (identificador INTEGER, cedJuridica VARCHAR)RETURNS void AS
$$
	UPDATE distribuidor SET cedula_juridica = cedJuridica WHERE id_distribuidor = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_cedulaJuridicaDistribuidor (12, '111');

CREATE OR REPLACE FUNCTION actualizar_razonSocialDistribuidor (identificador INTEGER, razonSocial VARCHAR)RETURNS void AS
$$
	UPDATE distribuidor SET razon_social = razonSocial WHERE id_distribuidor = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_razonSocialDistribuidor (12, 'RazonS4');

CREATE OR REPLACE FUNCTION actualizar_habitualDistribuidor (identificador INTEGER, esHabitual BOOLEAN)RETURNS void AS
$$
	UPDATE distribuidor SET habitual = esHabitual WHERE id_distribuidor = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_habitualDistribuidor (12, true);

CREATE OR REPLACE FUNCTION actualizar_idDireccionDistribuidor (identificador INTEGER, idDireccion INTEGER)RETURNS void AS
$$
	UPDATE distribuidor SET id_direccion = idDireccion WHERE id_distribuidor = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDireccionDistribuidor(12, 1);
---------------------------------------------------------------------------------------------------------------------------------
--TABLE DISTRITO
CREATE OR REPLACE FUNCTION actualizar_nombreDistrito (identificador INTEGER, nombre VARCHAR)RETURNS void AS
$$
	UPDATE distrito SET descripcion = nombre WHERE id_distrito = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_nombreDistrito (8, 'Distrito8');
-----------------------------------------------------------------------------------------------------------------------------------
--TABLE EMPLEADO
CREATE OR REPLACE FUNCTION actualizar_nombreEmpleado (identificador INTEGER, pNombre VARCHAR)RETURNS void AS
$$
	UPDATE empleado SET nombre = pNombre WHERE id_empleado = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_nombreEmpleado (7, 'Julio'); 

CREATE OR REPLACE FUNCTION actualizar_primerApellidoEmpleado (identificador INTEGER, primerApellido VARCHAR)RETURNS void AS
$$
	UPDATE empleado SET apellido1 = primerApellido WHERE id_empleado = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_primerApellidoEmpleado(7, 'Apellido1');

CREATE OR REPLACE FUNCTION actualizar_segundoApellidoEmpleado (identificador INTEGER, segundoApellido VARCHAR)RETURNS void AS
$$
	UPDATE empleado SET apellido2 = segundoApellido WHERE id_empleado = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_segundoApellidoEmpleado (7, 'Apellido2');

CREATE OR REPLACE FUNCTION actualizar_fechaNacEmpleado (identificador INTEGER, pFecha TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE empleado SET fecha_nacimiento = pFecha WHERE id_empleado = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaNacEmpleado (7, '1992-12-01');

CREATE OR REPLACE FUNCTION actualizar_idTipoEmpleadoE (identificador INTEGER, idTipoEmpleado INTEGER) RETURNS void AS
$$
	UPDATE empleado SET id_tipo_empleado = idTipoEmpleado WHERE id_empleado = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idTipoEmpleadoE (7, 2);

CREATE OR REPLACE FUNCTION actualizar_fechaInicioEmpleado (identificador INTEGER, fechaInicio TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE empleado SET fecha_inicio = fechaInicio WHERE id_empleado = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaInicioEmpleado (7, '2020-11-29');
------------------------------------------------------------------------------------------------------------------------------------------
--TABLA EMPLEADO X DEPARTAMENTO
CREATE OR REPLACE FUNCTION actualizar_idDepartamentoEmpleadoXDep (identificador INTEGER, idDepartamento INTEGER)RETURNS void AS
$$
	UPDATE empleado_x_departamento SET id_departamento = idDepartamento WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDepartamentoEmpleadoXDep (4, 3);

CREATE OR REPLACE FUNCTION actualizar_idEmpleadoEmpleadoXDep (identificador INTEGER, idEmpleado INTEGER)RETURNS void AS
$$
	UPDATE empleado_x_departamento SET id_empleado = idEmpleado WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEmpleadoEmpleadoXDep (4, 1);
---------------------------------------------------------------------------------------------------------------------------------
-- TABLA ENTREGA BODEGA
CREATE OR REPLACE FUNCTION actualizar_idBodegaEntregaB (identificador INTEGER, idBodega INTEGER)RETURNS void AS
$$
	UPDATE entrega_bodega SET id_bodega = idBodega WHERE id_entrega = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idBodegaEntregaB (3, 1);

CREATE OR REPLACE FUNCTION actualizar_cantidadBultosEntregaB (identificador INTEGER, cantidad NUMERIC)RETURNS void AS
$$
	UPDATE entrega_bodega SET bulto = cantidad WHERE id_entrega = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_cantidadBultosEntregaB (3, 10);

CREATE OR REPLACE FUNCTION actualizar_estatusEntregaB (identificador INTEGER, estado VARCHAR)RETURNS void AS
$$
	UPDATE entrega_bodega SET estatus = estado WHERE id_entrega = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_estatusEntregaB (3, 'pendiente');

CREATE OR REPLACE FUNCTION actualizar_fechaEntregaB (identificador INTEGER, pFecha TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE entrega_bodega SET fecha = pFecha WHERE id_entrega = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaEntregaB (3, '2020-11-30');
-------------------------------------------------------------------------------------------------------------------------------
--TABLA ENVIO
CREATE OR REPLACE FUNCTION actualizar_idTipoEnvioE (identificador INTEGER, idTipoEnvio INTEGER)RETURNS void AS
$$
	UPDATE envio SET id_tipo_envio = idTipoEnvio WHERE id_envio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idTipoEnvioE (8, 2);

CREATE OR REPLACE FUNCTION actualizar_fechaEnvio (identificador INTEGER, pFecha TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE envio SET fecha = pFecha WHERE id_envio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaEnvio (8, '2020-11-29');

CREATE OR REPLACE FUNCTION actualizar_idRutaEnvio (identificador INTEGER, idRuta INTEGER)RETURNS void AS
$$
	UPDATE envio SET id_ruta = idRuta WHERE id_envio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idRutaEnvio (8, 2);

CREATE OR REPLACE FUNCTION actualizar_idVehiculoEnvio (identificador INTEGER, idVehiculo INTEGER)RETURNS void AS
$$
	UPDATE envio SET id_vehiculo = idVehiculo WHERE id_envio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idVehiculoEnvio (8, 2);

CREATE OR REPLACE FUNCTION actualizar_idEmpleadoEnvio (identificador INTEGER, idEmpleado INTEGER)RETURNS void AS
$$
	UPDATE envio SET id_empleado = idEmpleado WHERE id_envio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEmpleadoEnvio (8, 1);

CREATE OR REPLACE FUNCTION actualizar_idBodegaEnvio (identificador INTEGER, idBodega INTEGER)RETURNS void AS
$$
	UPDATE envio SET id_bodega = idBodega WHERE id_envio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idBodegaEnvio (8, 2);

CREATE OR REPLACE FUNCTION actualizar_estadoEnvio (identificador INTEGER, pEstado VARCHAR)RETURNS void AS
$$
	UPDATE envio SET estado = pEstado WHERE id_envio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_estadoEnvio (8, 'pendiente');

CREATE OR REPLACE FUNCTION actualizar_gananciaEnvio (identificador INTEGER, pGanancia NUMERIC)RETURNS void AS
$$
	UPDATE envio SET ganancia = pGanancia WHERE id_envio = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_gananciaEnvio (8, 150000);
----------------------------------------------------------------------------------------------------------------------------------
--TABLA FACTURA DISTRIBUIDOR

CREATE OR REPLACE FUNCTION actualizar_idDistribuidorFD (identificador INTEGER, idDistribuidor INTEGER)RETURNS void AS
$$
	UPDATE factura_distribuidor SET id_distribuidor = idDistribuidor WHERE id_factura = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDistribuidorFD (20, 5);

CREATE OR REPLACE FUNCTION actualizar_idClienteFD (identificador INTEGER, idCliente INTEGER)RETURNS void AS
$$
	UPDATE factura_distribuidor SET id_cliente = idCliente WHERE id_factura = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idClienteFD (20, 3);

CREATE OR REPLACE FUNCTION actualizar_facturaElectronicaFD (identificador INTEGER, factElectronica NUMERIC)RETURNS void AS
$$
	UPDATE factura_distribuidor SET factura_electronica = factElectronica WHERE id_factura = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_facturaElectronicaFD (20, 3232);

CREATE OR REPLACE FUNCTION actualizar_montoFD (identificador INTEGER, pMonto NUMERIC)RETURNS void AS
$$
	UPDATE factura_distribuidor SET monto = pmonto WHERE id_factura = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_montoFD (20, 1500);

CREATE OR REPLACE FUNCTION actualizar_fechaFD (identificador INTEGER, pFecha TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE factura_distribuidor SET fecha = pFecha WHERE id_factura = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaFD (20, '2020-11-29');

CREATE OR REPLACE FUNCTION actualizar_cantidadBultosFD (identificador INTEGER, cantidad NUMERIC) RETURNS void AS
$$
	UPDATE factura_distribuidor SET bulto = cantidad WHERE id_factura = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_CantidadBultosFD (20, 8);

CREATE OR REPLACE FUNCTION actualizar_gananciaFD (identificador INTEGER, pGanancia NUMERIC)RETURNS void AS
$$
	UPDATE factura_distribuidor SET ganancia = pGanancia WHERE id_factura = identificador;
$$ LANGUAGE sql;

SELECT actualizar_gananciaFD (20, 500);
SELECT * FROM factura_distribuidor


