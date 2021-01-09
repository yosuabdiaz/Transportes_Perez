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
--TABLA FACTURA DISTRIBUIDOR

CREATE OR REPLACE FUNCTION actualizar_factura_distribuidor (pId INTEGER, pId_distribuidor INTEGER, pId_cliente INTEGER, pFactura_electronica NUMERIC, pMonto NUMERIC, pFecha TIMESTAMP WITHOUT TIME ZONE, pBulto NUMERIC, pGanancia NUMERIC)RETURNS void AS
$$
	UPDATE factura_distribuidor SET (id_distribuidor, id_cliente, factura_electronica, monto, fecha, bulto, ganancia) = (pId_distribuidor, pId_cliente, pFactura_electronica, pMonto, pFecha, pBulto, pGanancia) WHERE id_factura = pId;
$$ LANGUAGE sql;

--SELECT actualizar_factura_distribuidor (19, 5, 2, 4, 110000, '2021-1-9', 6, 50000);
---------------------------------------------------------------------------------------------------------------------

--TABLA FACTURA X ENTREGA
CREATE OR REPLACE FUNCTION actualizar_factura_x_entrega (pId INTEGER, pId_entrega INTEGER, pId_factura INTEGER)RETURNS void AS
$$
	UPDATE factura_x_entrega SET (id_entrega, id_factura) = (pId_entrega, pId_factura) WHERE id_linea = pId;
$$ LANGUAGE sql;

--SELECT actualizar_factura_x_entrega (6, 2, 6);

-------------------------------------------------------------------------------------------------------------------------------
--TABLA FACTURA X RECOGER
CREATE OR REPLACE FUNCTION actualizar_factura_x_recoger (pId INTEGER, pId_recoger INTEGER, pId_factura INTEGER)RETURNS void AS
$$
	UPDATE factura_x_recoger SET (id_recoger, id_factura) = (pId_recoger, pId_factura) WHERE id_linea = pId;
$$ LANGUAGE sql;


--SELECT actualizar_factura_x_recoger (1, 1,9);
-------------------------------------------------------------------------------------------------------------------------------------
--TABLA FACTURA X ENVIO
CREATE OR REPLACE FUNCTION actualizar_factura_x_envio (pId INTEGER, pId_envio INTEGER, pId_factura INTEGER)RETURNS void AS
$$
	UPDATE facturas_x_envio SET (id_envio, id_factura) = (pId_envio, pId_factura) WHERE id_linea = pId;
$$ LANGUAGE sql;

SELECT actualizar_factura_x_envio (9, 3,9);
----------------------------------------------------------------------------------------------------------------------------
--TABLA MANTENIMIENTO
CREATE OR REPLACE FUNCTION actualizar_mantenimiento (pId INTEGER, pId_taller INTEGER, pId_vehiculo INTEGER, pFecha TIMESTAMP WITHOUT TIME ZONE, pMonto NUMERIC, pNota_general VARCHAR)RETURNS void AS
$$
	UPDATE mantenimiento SET (id_taller, id_vehiculo, fecha, monto, nota_general) = (pId_taller, pId_vehiculo, pFecha, pMonto, pNota_general) WHERE id_mantenimiento = pId;
$$ LANGUAGE sql;

--SELECT actualizar_mantenimiento(3, 1, 3, '2021-01-9', 100000, 'bueno');
----------------------------------------------------------------------------------------------------------------------------
--TABLA PRODUCTO
CREATE OR REPLACE FUNCTION actualizar_producto (pId INTEGER, pDescripcion VARCHAR, pCosto_envio NUMERIC)RETURNS void AS
$$
	UPDATE producto SET (descripcion, costo_envio) = (pDescripcion, pCosto_envio) WHERE id_producto = pId;
$$ LANGUAGE sql;

--SELECT actualizar_producto (15, 'Armario grande', 50000);
--------------------------------------------------------------------------------------------------------------------------------
--TABLA PRODUCTO X ENVIO
CREATE OR REPLACE FUNCTION actualizar_producto_x_envio (pId INTEGER, pId_envio INTEGER, pId_producto INTEGER)RETURNS void AS
$$
	UPDATE producto_x_envio SET (id_envio, id_producto) = (pId_envio, pId_producto) WHERE id_linea = pId;
$$ LANGUAGE sql;

--SELECT actualizar_producto_x_envio (9, 3, 8);
------------------------------------------------------------------------------------------------------------------------------------------
--TABLA PROVINCIA
CREATE OR REPLACE FUNCTION actualizar_provincia (pId INTEGER, pNombre VARCHAR)RETURNS void AS
$$
	UPDATE provincia SET descripcion = pNombre WHERE id_provincia = pId;
$$ LANGUAGE sql;


--SELECT actualizar_provincia (4, 'Limón');
-------------------------------------------------------------------------------------------------------------------------------
-- TABLA PUNTO
CREATE OR REPLACE FUNCTION actualizar_punto (pId INTEGER, pId_direccion INTEGER, pDescripcion VARCHAR, pLatitud FLOAT, pLongitud FLOAT, pAltitud FLOAT, pEs_inicio BOOLEAN, pEs_final BOOLEAN)RETURNS void AS
$$
	UPDATE punto SET (id_direccion, descripcion, latitud, longitud, altitud, es_inicio, es_final) = (pId_direccion, pDescripcion, pLatitud, pLongitud, pAltitud, pEs_inicio, pEs_final) WHERE id_punto = pId;
$$ LANGUAGE sql;

--SELECT actualizar_punto (7, 7, 'descripcion', 9.976545, -84.43432, 1144, false, false);
-----------------------------------------------------------------------------------------------------------------------------
--TABLA PUNTOS X RUTA
CREATE OR REPLACE FUNCTION actualizar_puntos_x_ruta (pId INTEGER, pId_ruta INTEGER, pId_punto INTEGER)RETURNS void AS
$$
	UPDATE puntos_x_ruta SET (id_ruta, id_punto) = (pId_ruta, pId_punto) WHERE id_linea = pId;
$$ LANGUAGE sql;


SELECT actualizar_puntos_x_ruta (8, 2, 2);
------------------------------------------------------------------------------------------------------------------------------

--TABLA RECOGER
CREATE OR REPLACE FUNCTION actualizar_recoger (pId INTEGER, pId_direccion INTEGER, pId_distribuidor INTEGER, pBulto NUMERIC, pCosto NUMERIC, pFecha TIMESTAMP WITHOUT TIME ZONE, pEstatus VARCHAR)RETURNS void AS
$$
	UPDATE recoger SET (id_direccion, id_distribuidor, bulto, costo, fecha, estatus) = (pId_direccion, pId_distribuidor, pBulto, pCosto, pFecha, pEstatus) WHERE id_recoger = pId;
$$ LANGUAGE sql;

--SELECT actualizar_recoger (1, 3, 1, 10, 8000, '2005-01-01', 'recogido');
----------------------------------------------------------------------------------------------------------------------------------
--TABLA RUTA
CREATE OR REPLACE FUNCTION actualizar_ruta (pId INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE ruta SET descripcion = pDescripcion WHERE id_ruta = pId;
$$ LANGUAGE sql;

--SELECT actualizar_ruta (15, 'Ruta15');
------------------------------------------------------------------------------------------------------------------------------

--TABLA SALARIO
CREATE OR REPLACE FUNCTION actualizar_salario (pId INTEGER, pId_empleado INTEGER, pHoras_trabajadas NUMERIC, pPago_x_hora NUMERIC, pFecha_pago TIMESTAMP WITHOUT TIME ZONE, pHoras_extra NUMERIC, pPago_x_hora_extra NUMERIC)RETURNS void AS
$$
	UPDATE salario SET (id_empleado, horas_trabajadas, pago_x_hora, fecha_pago, horas_extra, pago_x_hora_extra) = (pId_empleado, pHoras_trabajadas, pPago_x_hora, pFecha_pago, pHoras_extra, pPago_x_hora_extra) WHERE id_salario = pId;
$$ LANGUAGE sql;

--SELECT actualizar_salario (6, 6, 43, 10000, '1999-01-01', 2, 15000);
-----------------------------------------------------------------------------------------------------------------------------
--TABLA TALLER
CREATE OR REPLACE FUNCTION actualizar_taller (pId INTEGER, pId_direccion INTEGER, pDescripcion VARCHAR, pRazon_comercial VARCHAR, pRazon_social VARCHAR, pCedula_juridica VARCHAR)RETURNS void AS
$$
	UPDATE taller SET (id_direccion, descripcion, razon_comercial, razon_social, cedula_juridica) = (pId_direccion, pDescripcion, pRazon_comercial, pRazon_social, pCedula_juridica) WHERE id_taller = pId;
$$ LANGUAGE sql;

--SELECT actualizar_taller (4,4, 'taller4', 'RC4', 'RS4', '4444444');
----------------------------------------------------------------------------------------
--TABLA TELEFONO BODEGA
CREATE OR REPLACE FUNCTION actualizar_telefono_bodega (pId INTEGER, pId_bodega INTEGER, pNumero NUMERIC) RETURNS void AS
$$
	UPDATE telefono_bodega SET (id_bodega, numero) = (pId_bodega, pNumero) WHERE id_telefono = pId;
$$ LANGUAGE sql;

--SELECT actualizar_telefono_bodega (2, 2, 22454885);
-----------------------------------------------------------------------------------------------------
--TABLA TELEFONO CLIENTE
CREATE OR REPLACE FUNCTION actualizar_telefono_cliente (pId INTEGER, pId_cliente INTEGER, pNumero NUMERIC)RETURNS void AS
$$
	UPDATE telefono_cliente SET (id_cliente, numero) = (pId_cliente, pNumero) WHERE id_telefono = pId;
$$ LANGUAGE sql;

--SELECT actualizar_telefono_cliente (3, 3, 25854565);
------------------------------------------------------------------------------------------------------
--TABLA TELEFONO DISTRIBUIDOR
CREATE OR REPLACE FUNCTION actualizar_telefono_distribuidor (pId INTEGER, pId_distribuidor INTEGER, pNumero NUMERIC)RETURNS void AS
$$
	UPDATE telefono_distribuidor SET (id_distribuidor, numero) = (pId_distribuidor, pNumero) WHERE id_telefono = pId;
$$ LANGUAGE sql;

--SELECT actualizar_telefono_distribuidor (3,1, 26656885);
---------------------------------------------------------------------------------------------------------------
--TABLA TELEFONO EMPLEADO
CREATE OR REPLACE FUNCTION actualizar_telefono_empleado (pId INTEGER, pId_empleado INTEGER, pNumero NUMERIC)RETURNS void AS
$$
	UPDATE telefono_empleado SET (id_empleado, numero) = (pId_empleado, pNumero) WHERE id_telefono = pId;
$$ LANGUAGE sql;

--SELECT actualizar_telefono_empleado (6,6,84455455);
--------------------------------------------------------------------------------------------------------------
--TABLA TELEFONO TALLER
CREATE OR REPLACE FUNCTION actualizar_telefono_taller (pId INTEGER, pId_taller INTEGER, pNumero NUMERIC)RETURNS void AS
$$
	UPDATE telefono_taller SET (id_taller, numero) = (pId_taller, pNumero) WHERE id_telefono = pId;
$$ LANGUAGE sql;


--SELECT actualizar_telefono_taller (4, 4, 87787878);
---------------------------------------------------------------------------------------------------------
--TABLA TIPO COMBUSTIBLE
CREATE OR REPLACE FUNCTION actualizar_tipo_combustible (pId INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_combustible SET descripcion= pDescripcion WHERE id_tipo_combustible = pId;
$$ LANGUAGE sql;

--SELECT actualizar_tipo_combustible (5, 'plus y gas');
--------------------------------------------------------------------------------------------------------------
--TABLA TIPO EMPLEADO
CREATE OR REPLACE FUNCTION actualizar_tipo_empleado (pId INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_empleado SET descripcion= pDescripcion WHERE id_tipo_empleado = pId;
$$ LANGUAGE sql;

--SELECT actualizar_tipo_empleado (4, 'jefe');
--------------------------------------------------------------------------------------------
--TABLA TIPO ENVIO
CREATE OR REPLACE FUNCTION actualizar_tipo_envio (pId INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_envio SET descripcion= pDescripcion WHERE id_tipo_envio = pId;
$$ LANGUAGE sql;

--SELECT actualizar_tipo_envio (2, 'Nicaragua');
--------------------------------------------------------------------------------------------
--TABLA TIPO MANTENIMIENTO
CREATE OR REPLACE FUNCTION actualizar_tipo_mantenimiento (pId INTEGER, pDescripcion VARCHAR)RETURNS void AS
$$
	UPDATE tipo_mantenimiento SET descripcion= pDescripcion WHERE id_tipo_mantenimiento = pId;
$$ LANGUAGE sql;

--SELECT actualizar_tipo_mantenimiento (12, 'frenos de disco');
----------------------------------------------------------------------------------------------------
--TABLA TIPO VEHICULO
CREATE OR REPLACE FUNCTION actualizar_tipo_vehiculo (pId INTEGER, pId_tipo_combustible INTEGER, pDescripcion VARCHAR, pEje NUMERIC, pPasajeros NUMERIC, pCongelador BOOLEAN)RETURNS void AS
$$
	UPDATE tipo_vehiculo SET (id_tipo_combustible, descripcion, eje, pasajeros, congelador)= (pId_tipo_combustible, pDescripcion, pEje, pPasajeros, pCongelador) WHERE id_tipo_vehiculo = pId;
$$ LANGUAGE sql;

--SELECT actualizar_tipo_vehiculo (1, 1, 'Camion', 4, 3, false);
-------------------------------------------------------------------------------------------------
--TABLA VEHICULO
CREATE OR REPLACE FUNCTION actualizar_vehiculo (pId INTEGER, pId_tipo_vehiculo INTEGER, pMatricula NUMERIC, pEstado VARCHAR, pValor_fiscal NUMERIC, pMarca VARCHAR, pModelo VARCHAR, pMarchamo BOOLEAN, pRevision_tecnica BOOLEAN, pPeso NUMERIC)RETURNS void AS
$$
	UPDATE vehiculo SET (id_tipo_vehiculo, matricula, estado, valor_fiscal, marca, modelo, marchamo, revision_tecnica, peso) = (pId_tipo_vehiculo, pMatricula, pEstado, pValor_fiscal, pMarca, pModelo, pMarchamo, pRevision_tecnica, pPeso) WHERE id_vehiculo = pId;
$$ LANGUAGE sql;

--SELECT actualizar_vehiculo (4, 1, 34565, 'Excelente', 70000000, 'nissan', 'y2', true, true, 7);