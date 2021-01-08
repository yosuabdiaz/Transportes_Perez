--FUNCIONES DE ACTUALIZAR

--TABLA BODEGA
CREATE OR REPLACE FUNCTION actualizar_bodega (pId INTEGER, pTamano NUMERIC, pId_direccion INTEGER) RETURNS void AS
$$
	UPDATE bodega SET (tamano, id_direccion) = (pTamano, pId_direccion) WHERE id_bodega = pId;
$$ LANGUAGE sql;

--SELECT actualizar_bodega (2, 150, 2);
-------------------------------------------------------------------------------------------------------------
--TABLA CANTON
CREATE OR REPLACE FUNCTION actualizar_canton (pId INTEGER, pDescripcion VARCHAR) RETURNS void AS
$$
	UPDATE canton SET descripcion = pDescripcion WHERE id_canton = pId;
$$ LANGUAGE sql;

SELECT * FROM canton

--SELECT actualizar_Canton (7, 'Garabito');
---------------------------------------------------------------------------------------------
--TABLA CLIENTE
CREATE OR REPLACE FUNCTION actualizar_cliente (pId INTEGER, pNombre VARCHAR, pApellido1 VARCHAR, pApellido2 VARCHAR, pCedula VARCHAR, pId_direccion INTEGER) RETURNS void AS
$$
	UPDATE cliente SET (nombre, apellido1, apellido2, cedula, id_direccion) = (pNombre, pApellido1, pApellido2, pCedula, pId_direccion) WHERE id_cliente = pId;
$$ LANGUAGE sql;

--SELECT actualizar_cliente (1, 'Daniel', 'Martinez', 'Martinez', '2323432', 2);
-------------------------------------------------------------------------------------------------------------

--TABLA CODIGO POSTAL
CREATE OR REPLACE FUNCTION actualizar_codigo_postal (pId INTEGER, pId_provincia INTEGER, pId_distrito INTEGER, pId_canton INTEGER) RETURNS void AS
$$
	UPDATE codigo_postal SET (id_provincia, id_distrito, id_canton) = (pId_Provincia, pId_distrito, pId_canton) WHERE id_codigo = pId;
$$ LANGUAGE sql;

--SELECT actualizar_codigo_postal (7, 7, 3, 6); 
--------------------------------------------------------------------------------------------
-- TABLA CONVENIO
CREATE OR REPLACE FUNCTION actualizar_convenio (pId INTEGER, pId_cliente INTEGER, pDescripcion VARCHAR, pMonto NUMERIC, pFecha TIMESTAMP WITHOUT TIME ZONE, pActivo BOOLEAN) RETURNS void AS
$$
	UPDATE convenio SET (id_cliente, descripcion, monto, fecha, activo) = (pId_cliente, pDescripcion, pMonto, pFecha, pActivo) WHERE id_convenio = pId;
$$ LANGUAGE sql;

--SELECT actualizar_convenio (3, 3, 'convenio3', 100, '2021-1-8', true);
-------------------------------------------------------------------------------------------------------------------------------------------------
-- TABLA CONVENIO X ENVIO
CREATE OR REPLACE FUNCTION actualizar_convenio_x_envio(pId INTEGER, pId_envio INTEGER, pId_convenio INTEGER) RETURNS void AS
$$
	UPDATE convenio_x_envio SET (id_envio, id_convenio) = (pId_envio, pId_convenio) WHERE id_linea = pId;
$$ LANGUAGE sql;

SELECT * from convenio_x_envio

--SELECT actualizar_convenio_x_envio(9, 1, 3);
-----------------------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO BODEGA
CREATE OR REPLACE FUNCTION actualizar_correo_bodega (pId INTEGER, pId_bodega INTEGER, pDescripcion VARCHAR) RETURNS void AS
$$
	UPDATE correo_bodega SET (id_bodega, descripcion) = (pId_bodega, pDescripcion) WHERE id_correo = pId;
$$ LANGUAGE sql;

--SELECT actualizar_correo_bodega (1, 1, 'correo@');
------------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO CLIENTE
CREATE OR REPLACE FUNCTION actualizar_correo_cliente (pId INTEGER, pId_cliente INTEGER, pDescripcion VARCHAR) RETURNS void AS
$$
	UPDATE correo_cliente SET (id_cliente, descripcion) = (pId_cliente, pDescripcion) WHERE id_correo = pId;
$$ LANGUAGE sql;

--SELECT actualizar_correo_cliente (1, 1, 'correo@');
-------------------------------------------------------------------------------------------------------------------------

--TABLA CORREO DISTRIBUIDOR
CREATE OR REPLACE FUNCTION actualizar_correo_distribuidor (pId INTEGER, pId_distribuidor INTEGER, pDescripcion VARCHAR) RETURNS void AS
$$
	UPDATE correo_distribuidor SET (id_distribuidor, descripcion) = (pId_distribuidor, pDescripcion) WHERE id_correo = pId;
$$ LANGUAGE sql;


--SELECT actualizar_correo_distribuidor (1, 1, 'correo@');
-------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO EMPLEADO
CREATE OR REPLACE FUNCTION actualizar_correo_empleado (pId INTEGER, pId_empleado INTEGER, pDescripcion VARCHAR) RETURNS void AS
$$
	UPDATE correo_empleado SET (id_empleado, descripcion) = (pId_empleado, pDescripcion) WHERE id_correo = pId;
$$ LANGUAGE sql;

--SELECT actualizar_correo_empleado(1, 1, 'correo@');
-------------------------------------------------------------------------------------------------------------------------
--TABLA CORREO TALLER
CREATE OR REPLACE FUNCTION actualizar_correo_taller (pId INTEGER, pId_taller INTEGER, pDescripcion VARCHAR) RETURNS void AS
$$
	UPDATE correo_taller SET (id_taller, descripcion) = (pId_taller, pDescripcion) WHERE id_correo = pId;
$$ LANGUAGE sql;


--SELECT actualizar_correo_taller (1, 1, 'correo@');
-------------------------------------------------------------------------------------------------------------------------
--TABLA COSTO
CREATE OR REPLACE FUNCTION actualizar_costo (pId INTEGER, pId_envio INTEGER, pMonto NUMERIC) RETURNS void AS
$$
	UPDATE costo SET (id_envio, monto) = (pId_envio, pMonto) WHERE id_costo = pId;
$$ LANGUAGE sql;


--SELECT actualizar_costo (7, 7, 25000);
-------------------------------------------------------------------------------------------------------------------------------
--TABLA DEPARTAMENTO
CREATE OR REPLACE FUNCTION actualizar_departamento (pId INTEGER, pnombre VARCHAR)RETURNS void AS
$$
	UPDATE departamento SET nombre = pnombre WHERE id_departamento = pId;
$$ LANGUAGE sql;

--SELECT actualizar_departamento (3, 'Transporte');
------------------------------------------------------------------------------------------------------------------------------

--TABLA DEPARTAMENTO X BODEGA
CREATE OR REPLACE FUNCTION actualizar_departamento_x_bodega (pId INTEGER, pId_bodega INTEGER, pId_departamento INTEGER) RETURNS void AS
$$
	UPDATE departamento_x_bodega SET (id_bodega, id_departamento) = (pId_bodega, pId_departamento) WHERE id_linea = pId;
$$ LANGUAGE sql;

--SELECT actualizar_departamento_x_bodega (6, 2, 3);
------------------------------------------------------------------------------------------------------------------------------
--TABLA DETALLE COSTO
CREATE OR REPLACE FUNCTION actualizar_detalle_costo (pId INTEGER, pId_costo INTEGER, pDescripcion VARCHAR, pMonto NUMERIC, pFecha TIMESTAMP WITHOUT TIME ZONE, pPendiente BOOLEAN) RETURNS void AS
$$
	UPDATE detalle_costo SET (id_costo, descripcion, monto, fecha, pendiente) = (pId_costo, pDescripcion, pMonto, pFecha, pPendiente) WHERE id_detalle_costo = pId;
$$ LANGUAGE sql;


--SELECT actualizar_detalle_costo (9, 3,'lancha',15000,'2021-1-5', false);
--------------------------------------------------------------------------------------------------------------------------------
--TABLA DETALLE MANTENIMIENTO
CREATE OR REPLACE FUNCTION actualizar_detalle_mantenimiento (pId INTEGER, pId_mantenimiento INTEGER, pId_tipo_mantenimiento INTEGER, pDescripcion VARCHAR, pMonto NUMERIC, pCalificacion VARCHAR)RETURNS void AS
$$
	UPDATE detalle_mantenimiento SET (id_mantenimiento, id_tipo_mantenimiento, descripcion, monto, calificacion) = (pId_mantenimiento, pId_tipo_mantenimiento, pDescripcion, pMonto, pCalificacion) WHERE id_detalle_mantenimiento = pId;
$$ LANGUAGE sql;

--SELECT actualizar_detalle_mantenimiento (3, 3, 3, 'Cambio de frenos', 300000, 'buena');
-----------------------------------------------------------------------------------------------------------------------------------------
--TABLA DIRECCION
CREATE OR REPLACE FUNCTION actualizar_direccion (pId INTEGER, pId_codigo INTEGER, pDescripcion VARCHAR) RETURNS void AS
$$
	UPDATE direccion SET (id_codigo, descripcion) = (pId_codigo, pDescripcion) WHERE id_direccion = pId;
$$ LANGUAGE sql;


--SELECT actualizar_direccion (7, 7, 'direccion7');
--------------------------------------------------------------------------------------------------------------------------------
--TABLA DISTRIBUIDOR
CREATE OR REPLACE FUNCTION actualizar_distribuidor (pId INTEGER, pRazon_comercial VARCHAR, pCedula_juridica VARCHAR, pRazon_social VARCHAR, pHabitual BOOLEAN, pId_direccion INTEGER)RETURNS void AS
$$
	UPDATE distribuidor SET (razon_comercial, cedula_juridica, razon_social, habitual, id_direccion) = (pRazon_comercial, pCedula_juridica, pRazon_social, pHabitual, pId_direccion) WHERE id_distribuidor = pId;
$$ LANGUAGE sql;


--SELECT actualizar_distribuidor (11, 'Plastimex', '22523', 'Plastimex s.a', true, 3);
---------------------------------------------------------------------------------------------------------------------------------
--TABLE DISTRITO
CREATE OR REPLACE FUNCTION actualizar_distrito (pId INTEGER, pNombre VARCHAR)RETURNS void AS
$$
	UPDATE distrito SET descripcion = pNombre WHERE id_distrito = pId;
$$ LANGUAGE sql;


--SELECT actualizar_distrito (7, 'Distrito7');
-----------------------------------------------------------------------------------------------------------------------------------

--TABLE EMPLEADO
CREATE OR REPLACE FUNCTION actualizar_empleado (pId INTEGER, pNombre VARCHAR, pApellido1 VARCHAR, pApellido2 VARCHAR, pFecha_nacimiento TIMESTAMP WITHOUT TIME ZONE, pId_tipo_empleado INTEGER, pFecha_inicio TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE empleado SET (nombre, apellido1, apellido2, fecha_nacimiento, id_tipo_empleado, fecha_inicio) = (pNombre, pApellido1, pApellido2, pFecha_nacimiento, pId_tipo_empleado, pFecha_inicio) WHERE id_empleado = pId;
$$ LANGUAGE sql;


--SELECT actualizar_empleado (6, 'empleado6', 'apellido1', 'apellido2', '1992-1-8', 4, '2021-1-6'); 
------------------------------------------------------------------------------------------------------------------------------------------
--TABLA EMPLEADO X DEPARTAMENTO
CREATE OR REPLACE FUNCTION actualizar_empleado_x_departamento (pId INTEGER, pId_departamento INTEGER, pId_empleado INTEGER)RETURNS void AS
$$
	UPDATE empleado_x_departamento SET (id_departamento, id_empleado) = (pId_departamento, pId_empleado) WHERE id_linea = pId;
$$ LANGUAGE sql;


--SELECT actualizar_empleado_x_departamento (3, 3, 6);
---------------------------------------------------------------------------------------------------------------------------------
-- TABLA ENTREGA BODEGA
CREATE OR REPLACE FUNCTION actualizar_entrega_bodega (pId INTEGER, pId_bodega INTEGER, pBulto NUMERIC, pEstatus VARCHAR, pFecha TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE entrega_bodega SET (id_bodega, bulto, estatus, fecha) = (pId_bodega, pBulto, pEstatus, pFecha) WHERE id_entrega = pId;
$$ LANGUAGE sql;

--SELECT actualizar_entrega_bodega (2, 2, 25, 'entregado','2019-5-9');
-------------------------------------------------------------------------------------------------------------------------------
--TABLA ENVIO
CREATE OR REPLACE FUNCTION actualizar_envio (pId INTEGER, pId_tipo_envio INTEGER, pFecha TIMESTAMP WITHOUT TIME ZONE, pId_ruta INTEGER, pId_vehiculo INTEGER, pId_empleado INTEGER, pId_bodega INTEGER, pEstado VARCHAR, pGanancia NUMERIC)RETURNS void AS
$$
	UPDATE envio SET (id_tipo_envio, fecha, id_ruta, id_vehiculo, id_empleado, id_bodega, estado, ganancia) = (pId_tipo_envio, pFecha, pId_ruta, pId_vehiculo, pId_empleado, pId_bodega, pEstado, pGanancia) WHERE id_envio = pId;
$$ LANGUAGE sql;

--SELECT actualizar_envio (7, 1, '2021-1-8', 1, 1, 2, 1, 'entregado', 900000);
----------------------------------------------------------------------------------------------------------------------------------



/*

									MODIFICAR LAS QUE SIGUEN

*/




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

--SELECT actualizar_gananciaFD (20, 500);
---------------------------------------------------------------------------------------------------------------------
--TABLA FACTURA X ENTREGA
CREATE OR REPLACE FUNCTION actualizar_idEntregaFxEnt (identificador INTEGER, idEntrega INTEGER)RETURNS void AS
$$
	UPDATE factura_x_entrega SET id_entrega = idEntrega WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEntregaFxEnt (7, 2);

CREATE OR REPLACE FUNCTION actualizar_idFacturaFxEnt (identificador INTEGER, idFactura INTEGER) RETURNS void AS
$$
	UPDATE factura_x_entrega SET id_factura = idFactura WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idFacturaFxEnt (7, 19);
-------------------------------------------------------------------------------------------------------------------------------
--TABLA FACTURA X RECOGER
CREATE OR REPLACE FUNCTION actualizar_idRecogerFxR (identificador INTEGER, idRecoger INTEGER)RETURNS void AS
$$
	UPDATE factura_x_recoger SET id_recoger = idRecoger WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idRecogerFxR (2, 1);

CREATE OR REPLACE FUNCTION actualizar_idFacturaFxR (identificador INTEGER, idFactura INTEGER) RETURNS void AS
$$
	UPDATE factura_x_recoger SET id_factura = idFactura WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idFacturaFxR (2, 6);
-------------------------------------------------------------------------------------------------------------------------------------
--TABLA FACTURA X ENVIO
CREATE OR REPLACE FUNCTION actualizar_idEnvioFxEnv (identificador INTEGER, idEnvio INTEGER)RETURNS void AS
$$
	UPDATE facturas_x_envio SET id_envio = idEnvio WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEnvioFxEnv (10, 3);

CREATE OR REPLACE FUNCTION actualizar_idFacturaFxEnv (identificador INTEGER, idFactura INTEGER)RETURNS void AS
$$
	UPDATE facturas_x_envio SET id_factura = idFactura WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idFacturaFxEnv (10, 9);
----------------------------------------------------------------------------------------------------------------------------
--TABLA MANTENIMIENTO
CREATE OR REPLACE FUNCTION actualizar_idTallerMantenimiento (identificador INTEGER, idTaller INTEGER)RETURNS void AS
$$
	UPDATE mantenimiento SET id_taller = idTaller WHERE id_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idTallerMantenimiento(4, 2);

CREATE OR REPLACE FUNCTION actualizar_idVehiculoMantenimiento (identificador INTEGER, idVehiculo INTEGER)RETURNS void AS
$$
	UPDATE mantenimiento SET id_vehiculo = idVehiculo WHERE id_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idVehiculoMantenimiento (4, 5);

CREATE OR REPLACE FUNCTION actualizar_fechaMantenimiento (identificador INTEGER, pFecha TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE mantenimiento SET fecha = pFecha WHERE id_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaMantenimiento (4, '2020-11-30');

CREATE OR REPLACE FUNCTION actualizar_montoMantenimiento (identificador INTEGER, pMonto NUMERIC)RETURNS void AS
$$
	UPDATE mantenimiento SET monto = pMonto WHERE id_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_montoMantenimiento (4, 50000);

CREATE OR REPLACE FUNCTION actualizar_notaMantenimiento (identificador INTEGER, nota VARCHAR)RETURNS void AS
$$
	UPDATE mantenimiento SET nota_general = nota WHERE id_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_notaMantenimiento (4, 'bueno');
----------------------------------------------------------------------------------------------------------------------------
--TABLA PRODUCTO
CREATE OR REPLACE FUNCTION actualizar_descripcionProducto (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE producto SET descripcion = pDescripcion WHERE id_producto = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionProducto (16, 'Armario mediano');

CREATE OR REPLACE FUNCTION actualizar_costoEnvioProducto (identificador INTEGER, costoEnvio NUMERIC)RETURNS void AS
$$
	UPDATE producto SET costo_envio = costoEnvio WHERE id_producto = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_costoEnvioProducto (16, 10000);
--------------------------------------------------------------------------------------------------------------------------------
--TABLA PRODUCTO X ENVIO
CREATE OR REPLACE FUNCTION actualizar_idEnvioPxE (identificador INTEGER, idEnvio INTEGER)RETURNS void AS
$$
	UPDATE producto_x_envio SET id_envio = idEnvio WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEnvioPxE (10, 3);

CREATE OR REPLACE FUNCTION actualizar_idProductoPxE (identificador INTEGER, idProducto INTEGER)RETURNS void AS
$$
	UPDATE producto_x_envio SET id_producto = idProducto WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idProductoPxE (10, 15);
------------------------------------------------------------------------------------------------------------------------------
--TABLA PROVINCIA
CREATE OR REPLACE FUNCTION actualizar_nombreProvincia (identificador INTEGER, nombre VARCHAR)RETURNS void AS
$$
	UPDATE provincia SET descripcion = nombre WHERE id_provincia = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_nombreProvincia (4, 'Limón');
-------------------------------------------------------------------------------------------------------------------------------
-- TABLA PUNTO
CREATE OR REPLACE FUNCTION actualizar_idDireccionPunto (identificador INTEGER, idDireccion INTEGER)RETURNS void AS
$$
	UPDATE punto SET id_direccion = idDireccion WHERE id_punto = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDireccionPunto (8, 7);

CREATE OR REPLACE FUNCTION actualizar_descripcionPunto (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE punto SET descripcion = pDescripcion WHERE id_punto = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionPunto (8, 'desc');

CREATE OR REPLACE FUNCTION actualizar_latitudPunto (identificador INTEGER, coordenada FLOAT)RETURNS void AS
$$
	UPDATE punto SET latitud = coordenada WHERE id_punto = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_latitudPunto (8, 0.0);

CREATE OR REPLACE FUNCTION actualizar_longitudPunto (identificador INTEGER, coordenada FLOAT)RETURNS void AS
$$
	UPDATE punto SET longitud = coordenada WHERE id_punto = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_longitudPunto (8, 0.0);

CREATE OR REPLACE FUNCTION actualizar_altitudPunto (identificador INTEGER, coordenada FLOAT)RETURNS void AS
$$
	UPDATE punto SET altitud = coordenada WHERE id_punto = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_altitudPunto (8, 0.0);

CREATE OR REPLACE FUNCTION actualizar_inicialPunto (identificador INTEGER, esInicio BOOLEAN)RETURNS void AS
$$
	UPDATE punto SET es_inicio = esInicio WHERE id_punto = identificador;
$$ LANGUAGE sql; 

--SELECT actualizar_inicialPunto (8, false);

CREATE OR REPLACE FUNCTION actualizar_finalPunto (identificador INTEGER, esFinal BOOLEAN)RETURNS void AS
$$
	UPDATE punto SET es_final = esFinal WHERE id_punto = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_finalPunto (8, true);
-----------------------------------------------------------------------------------------------------------------------------
--TABLA PUNTOS X RUTA
CREATE OR REPLACE FUNCTION actualizar_idRutaPxR (identificador INTEGER, idRuta INTEGER)RETURNS void AS
$$
	UPDATE puntos_x_ruta SET id_ruta = idRuta WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idRutaPxR (9, 11);

CREATE OR REPLACE FUNCTION actualizar_idPuntoPxR (identificador INTEGER, idPunto INTEGER)RETURNS void AS
$$
	UPDATE puntos_x_ruta SET id_punto = idPunto WHERE id_linea = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idPuntoPxR (9, 6);
------------------------------------------------------------------------------------------------------------------------------
--TABLA RECOGER
CREATE OR REPLACE FUNCTION actualizar_idDireccionRecoger (identificador INTEGER, idDireccion INTEGER)RETURNS void AS
$$
	UPDATE recoger SET id_direccion = idDireccion WHERE id_recoger = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDireccionRecoger (2, 1);

CREATE OR REPLACE FUNCTION actualizar_idDistribuidorRecoger (identificador INTEGER, idDistribuidor INTEGER)RETURNS void AS
$$
	UPDATE recoger SET id_distribuidor = idDistribuidor WHERE id_recoger = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDistribuidorRecoger(2, 3);

CREATE OR REPLACE FUNCTION actualizar_bultosRecoger (identificador INTEGER, cantidad NUMERIC)RETURNS void AS
$$
	UPDATE recoger SET bulto = cantidad WHERE id_recoger = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_bultosRecoger (2, 20);

CREATE OR REPLACE FUNCTION actualizar_fechaRecoger (identificador INTEGER, pFecha TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE recoger SET fecha = pFecha WHERE id_recoger = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaRecoger (2, '2020-11-30');

CREATE OR REPLACE FUNCTION actualizar_estatusRecoger (identificador INTEGER, pEstatus VARCHAR)RETURNS void AS
$$
	UPDATE recoger SET estatus = pEstatus WHERE id_recoger = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_estatusRecoger (2, 'pendiente');
----------------------------------------------------------------------------------------------------------------------------------
--TABLA RUTA
CREATE OR REPLACE FUNCTION actualizar_descripcionRuta (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE ruta SET descripcion = pDescripcion WHERE id_ruta = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionRuta (16, 'Ruta16');
------------------------------------------------------------------------------------------------------------------------------
--TABLA SALARIO
CREATE OR REPLACE FUNCTION actualizar_idEmpleadoSalario (identificador INTEGER, idEmpleado INTEGER)RETURNS void AS
$$
	UPDATE salario SET id_empleado = idEmpleado WHERE id_salario = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEmpleadoSalario (7, 7);

CREATE OR REPLACE FUNCTION actualizar_horasTrabajadasSalario (identificador INTEGER, horas NUMERIC)RETURNS void AS
$$
	UPDATE salario SET horas_trabajadas = horas WHERE id_salario = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_horasTrabajadasSalario (7, 20);

CREATE OR REPLACE FUNCTION actualizar_pagoHoraSalario (identificador INTEGER, pago NUMERIC)RETURNS void As
$$
	UPDATE salario SET pago_x_hora = pago WHERE id_salario = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_pagoHoraSalario (7, 5000); 

CREATE OR REPLACE FUNCTION actualizar_fechaPagoSalario (identificador INTEGER, fecha TIMESTAMP WITHOUT TIME ZONE)RETURNS void AS
$$
	UPDATE salario SET fecha_pago = fecha WHERE id_salario = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_fechaPagoSalario (7, '2000-01-01');

CREATE OR REPLACE FUNCTION actualizar_horasExtraSalario (identificador INTEGER, horas NUMERIC)RETURNS void AS
$$ 
	UPDATE salario SET horas_extra = horas WHERE id_salario = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_horasExtraSalario (7, 1);

CREATE OR REPLACE FUNCTION actualizar_pagoHoraExtraSalario (identificador INTEGER, monto NUMERIC)RETURNS void AS
$$
	UPDATE salario SET pago_x_hora_extra = monto WHERE id_salario = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_pagoHoraExtraSalario (7, 2000);
-----------------------------------------------------------------------------------------------------------------------------
--TABLA TALLER
CREATE OR REPLACE FUNCTION actualizar_idDireccionTaller (identificador INTEGER, idDireccion INTEGER)RETURNS void AS
$$
	UPDATE taller SET id_direccion = idDireccion WHERE id_taller = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDireccionTaller (4, 5);

CREATE OR REPLACE FUNCTION actualizar_descripcionTaller (identificador INTEGER, pDescripcion VARCHAR) RETURNS void AS
$$
	UPDATE taller SET descripcion = pDescripcion WHERE id_taller = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionTaller (5, 'Taller5');

CREATE OR REPLACE FUNCTION actualizar_razonComercialTaller (identificador INTEGER, razonComercial VARCHAR)RETURNS void AS
$$
	UPDATE taller SET razon_comercial = razonComercial WHERE id_taller = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_razonComercialTaller (5, 'RazonCom5');

CREATE OR REPLACE FUNCTION actualizar_razonSocialTaller (identificador INTEGER, razonSocial VARCHAR)RETURNS void AS
$$
	UPDATE taller SET razon_social = razonSocial WHERE id_taller = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_razonSocialTaller (5, 'RazonSoc5');

CREATE OR REPLACE FUNCTION actualizar_cedulaJuridicaTaller (identificador INTEGER, cedula VARCHAR)RETURNS void AS
$$
	UPDATE taller SET cedula_juridica = cedula WHERE id_taller = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_cedulaJuridicaTaller (5, '5555555');
----------------------------------------------------------------------------------------
--TABLA TELEFONO BODEGA
CREATE OR REPLACE FUNCTION actualizar_idBodegaTelBodega (identificador INTEGER, idBodega INTEGER) RETURNS void AS
$$
	UPDATE telefono_bodega SET id_bodega = idBodega WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idBodegaTelBodega (3, 2);

CREATE OR REPLACE FUNCTION actualizar_numeroTelBodega (identificador INTEGER, num NUMERIC)RETURNS void AS
$$
	UPDATE telefono_bodega SET numero = num WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_numeroTelBodega (3, 123456);
-----------------------------------------------------------------------------------------------------
--TABLA TELEFONO CLIENTE
CREATE OR REPLACE FUNCTION actualizar_idClienteTelBodega (identificador INTEGER, idCliente INTEGER)RETURNS void AS
$$
	UPDATE telefono_cliente SET id_cliente = idCliente WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idClienteTelBodega (4,5);

CREATE OR REPLACE FUNCTION actualizar_numeroTelCliente (identificador INTEGER, num NUMERIC)RETURNS void AS
$$
	UPDATE telefono_cliente SET numero = num WHERE id_telefono = identificador;
$$ LANGUAGE sql;

SELECT actualizar_numeroTelCliente (4, 85593023);
------------------------------------------------------------------------------------------------------
--TABLA TELEFONO DISTRIBUIDOR
CREATE OR REPLACE FUNCTION actualizar_idDistribuidorTelDistribuidor (identificador INTEGER, idDistribuidor INTEGER)RETURNS void AS
$$
	UPDATE telefono_distribuidor SET id_distribuidor = idDistribuidor WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idDistribuidorTelDistribuidor (4,5);

CREATE OR REPLACE FUNCTION actualizar_numeroTelDistribuidor (identificador INTEGER, num NUMERIC)RETURNS void AS
$$
	UPDATE telefono_distribuidor SET numero = num WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_numeroTelDistribuidor (4, 85593022);
---------------------------------------------------------------------------------------------------------------
--TABLA TELEFONO EMPLEADO
CREATE OR REPLACE FUNCTION actualizar_idEmpleadoTelEmpleado (identificador INTEGER, idEmpleado INTEGER)RETURNS void AS
$$
	UPDATE telefono_empleado SET id_empleado = idEmpleado WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idEmpleadoTelEmpleado (7,7);

CREATE OR REPLACE FUNCTION actualizar_numeroTelEmpleado (identificador INTEGER, num NUMERIC)RETURNS void AS
$$
	UPDATE telefono_empleado SET numero = num WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_numeroTelempleado (4, 85593020);
--------------------------------------------------------------------------------------------------------------
--TABLA TELEFONO TALLER
CREATE OR REPLACE FUNCTION actualizar_idTallerTelTaller (identificador INTEGER, idTaller INTEGER)RETURNS void AS
$$
	UPDATE telefono_taller SET id_taller = idTaller WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idTallerTelTaller (5,5);

CREATE OR REPLACE FUNCTION actualizar_numeroTelTaller (identificador INTEGER, num NUMERIC)RETURNS void AS
$$
	UPDATE telefono_taller SET numero = num WHERE id_telefono = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_numeroTelTaller (5, 22451923);
---------------------------------------------------------------------------------------------------------
--TABLA TIPO COMBUSTIBLE
CREATE OR REPLACE FUNCTION actualizar_descripcionTipoCombustible (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_combustible SET descripcion= pDescripcion WHERE id_tipo_combustible = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionTipoCombustible (6, 'electrico')
--------------------------------------------------------------------------------------------------------------
--TABLA TIPO EMPLEADO
CREATE OR REPLACE FUNCTION actualizar_descripcionTipoEmpleado (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_empleado SET descripcion= pDescripcion WHERE id_tipo_empleado = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionTipoEmpleado (5, 'tipo6');
--------------------------------------------------------------------------------------------
--TABLA TIPO ENVIO
CREATE OR REPLACE FUNCTION actualizar_descripcionTipoEnvio (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_envio SET descripcion= pDescripcion WHERE id_tipo_envio = identificador;
$$ LANGUAGE sql;

SELECT actualizar_descripcionTipoEnvio (3, 'tipo3');
--------------------------------------------------------------------------------------------
--TABLA TIPO MANTENIMIENTO
CREATE OR REPLACE FUNCTION actualizar_descripcionTipoMantenimiento (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_mantenimiento SET descripcion= pDescripcion WHERE id_tipo_mantenimiento = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionTipoMantenimiento (13, 'tipo13');
----------------------------------------------------------------------------------------------------
--TABLA TIPO VEHICULO
CREATE OR REPLACE FUNCTION actualizar_descripcionTipoVehiculo (identificador INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_vehiculo SET descripcion= pDescripcion WHERE id_tipo_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_descripcionTipoVehiculo (2, 'Camion grande');

CREATE OR REPLACE FUNCTION actualizar_idTipoCombTV (identificador INTEGER, idTipoComb INTEGER)RETURNS void AS
$$
	UPDATE tipo_vehiculo SET id_tipo_combustible = idTipoComb WHERE id_tipo_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idTipoCombTV (2, 3);

CREATE OR REPLACE FUNCTION actualizar_ejesTipoVehiculo (identificador INTEGER, cantidadEjes NUMERIC)RETURNS void AS
$$
	UPDATE tipo_vehiculo SET eje = cantidadEjes WHERE id_tipo_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_ejesTipoVehiculo (2, 6);

CREATE OR REPLACE FUNCTION actualizar_pasajerosTipoVehiculo (identificador INTEGER, cantidadPasajeros NUMERIC)RETURNS void AS
$$
	UPDATE tipo_vehiculo SET pasajeros = cantidadPasajeros WHERE id_tipo_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_pasajerosTipoVehiculo (2, 2);

CREATE OR REPLACE FUNCTION actualizar_congeladorTipoVehiculo (identificador INTEGER, pCongelador BOOLEAN)RETURNS void AS
$$
	UPDATE tipo_vehiculo SET congelador = pCongelador WHERE id_tipo_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_congeladorTipoVehiculo(2, true);
-------------------------------------------------------------------------------------------------
--TABLA VEHICULO
CREATE OR REPLACE FUNCTION actualizar_idTipoVehiculoV (identificador INTEGER, idTipoVehiculo INTEGER)RETURNS void AS
$$
	UPDATE vehiculo SET id_tipo_vehiculo = idTipoVehiculo WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_idTipoVehiculoV (5, 1);

CREATE OR REPLACE FUNCTION actualizar_matriculaVehiculo (identificador INTEGER, pMatricula NUMERIC)RETURNS void AS
$$
	UPDATE vehiculo SET matricula = pMatricula WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_matriculaVehiculo (5, 55485);

CREATE OR REPLACE FUNCTION actualizar_estadoVehiculo (identificador INTEGER, pEstado VARCHAR)RETURNS void AS
$$
	UPDATE vehiculo SET estado = pEstado WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_estadoVehiculo (5, 'bueno');

CREATE OR REPLACE FUNCTION actualizar_valorFiscalVehiculo (identificador INTEGER, valorFiscal NUMERIC)RETURNS void AS
$$
	UPDATE vehiculo SET valor_fiscal = valorFiscal WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_valorFiscalVehiculo (5, 500000);

CREATE OR REPLACE FUNCTION actualizar_marcaVehiculo (identificador INTEGER, pMarca VARCHAR)RETURNS void AS
$$
	UPDATE vehiculo SET marca = pMarca WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_marcaVehiculo(5, 'Mercedez Benz');

CREATE OR REPLACE FUNCTION actualizar_modeloVehiculo (identificador INTEGER, pModelo VARCHAR)RETURNS void AS
$$
	UPDATE vehiculo SET modelo = pModelo WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_modeloVehiculo (5, 'Actros');

CREATE OR REPLACE FUNCTION actualizar_marchamoVehiculo (identificador INTEGER, pMarchamo BOOLEAN)RETURNS void AS
$$
	UPDATE vehiculo SET marchamo = pMarchamo WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_marchamoVehiculo (5, false);

CREATE OR REPLACE FUNCTION actualizar_revisionTecnicaVehiculo (identificador INTEGER, revisionTecnica BOOLEAN)RETURNS void AS
$$
	UPDATE vehiculo SET revision_tecnica = revisionTecnica WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_revisionTecnicaVehiculo(5, false);

CREATE OR REPLACE FUNCTION actualizar_pesoVehiculo (identificador INTEGER, pPeso NUMERIC)RETURNS void AS
$$
	UPDATE vehiculo SET peso = pPeso WHERE id_vehiculo = identificador;
$$ LANGUAGE sql;

--SELECT actualizar_pesoVehiculo (5, 9);
