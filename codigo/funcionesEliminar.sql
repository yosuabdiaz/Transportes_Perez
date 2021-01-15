CREATE OR REPLACE FUNCTION eliminar_bodega(id INTEGER) RETURNS VOID AS
$$
	DELETE FROM bodega WHERE id_bodega = id;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_canton(id INTEGER) RETURNS VOID AS
$$
	DELETE FROM canton WHERE id_canton = id;
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION eliminar_cliente(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM cliente WHERE id_cliente = id;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_codigo_postal(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM codigo_postal WHERE id_codigo = id;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_convenio(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM convenio WHERE id_convenio = id;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_convenio_x_envio(pid_linea INTEGER) RETURNS VOID AS 
$$
	DELETE FROM convenio_x_envio WHERE id_linea = pid_linea;
$$ LANGUAGE SQL;

/*CREATE OR REPLACE FUNCTION eliminar_convenio_x_envio(pid_envio INTEGER,pid_convenio INTEGER) RETURNS VOID AS 
$$
	DELETE FROM convenio_x_envio WHERE (id_convenio = pid_convenio AND id_envio = pid_envio);
$$ LANGUAGE SQL;
*/
CREATE OR REPLACE FUNCTION eliminar_correo_bodega(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM correo_bodega WHERE (id_correo = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_correo_cliente(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM correo_cliente WHERE (id_correo = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_correo_distribuidor(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM correo_distribuidor WHERE (id_correo = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_correo_empleado(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM correo_empleado WHERE (id_correo = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_correo_taller(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM correo_taller WHERE (id_correo = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_costo(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM costo WHERE (id_costo = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_departamento(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM departamento WHERE (id_departamento = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_departamento(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM departamento WHERE (id_departamento = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_departamento_x_bodega(pid_linea INTEGER) RETURNS VOID AS 
$$
	DELETE FROM departamento_x_bodega WHERE id_lineaa = pid_linea;
$$ LANGUAGE SQL;

/*
CREATE OR REPLACE FUNCTION eliminar_departamento_x_bodega(pid_bodega INTEGER,pid_departamento INTEGER) RETURNS VOID AS 
$$
	DELETE FROM departamento_x_bodega WHERE (id_bodega = pid_bodega AND id_departamento = pid_departamento);
$$ LANGUAGE SQL;
*/
/*
CREATE OR REPLACE FUNCTION eliminar_departamento_x_bodega(pid_bodega INTEGER,pid_departamento INTEGER) RETURNS VOID AS 
$$
	DELETE FROM departamento_x_bodega WHERE (id_bodega = pid_bodega AND id_departamento = pid_departamento);
$$ LANGUAGE SQL;
*/
CREATE OR REPLACE FUNCTION eliminar_detalle_costo(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM detalle_costo WHERE (id_detalle_costo = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_detalle_mantenimiento(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM detalle_mantenimiento WHERE (id_detalle_mantenimiento = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_direccion(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM direccion WHERE (id_direccion = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_distribuidor(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM distribuidor WHERE (id_distribuidor = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_distrito(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM distrito WHERE (id_distrito = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_empleado(pid INTEGER) RETURNS VOID AS 
$$
	DELETE FROM empleado WHERE id_empleado = pid;
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION eliminar_empleado_x_departamento(pid_depa INTEGER,pid_empleado INTEGER) RETURNS VOID AS 
$$
	DELETE FROM empleado_x_departamento WHERE (id_empleado = pid_empleado AND id_departamento = pid_depa);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_entrega(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM entrega_bodega WHERE (id_entrega = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_envio(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM envio WHERE (id_envio = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_factura_distribuidor(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM factura_distribuidor WHERE (id_factura = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_factura_x_entrega(pid_factura INTEGER, pid_entrega INTEGER) RETURNS VOID AS 
$$
	DELETE FROM factura_x_entrega WHERE (id_factura = pid_factura AND id_entrega = pid_entrega);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_factura_x_recoger(pid_factura INTEGER, pid_recoger INTEGER) RETURNS VOID AS 
$$
	DELETE FROM factura_x_recoger WHERE (id_factura = pid_factura AND id_recoger = pid_recoger);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_facturas_x_envio(pid_factura INTEGER, pid_envio INTEGER) RETURNS VOID AS 
$$
	DELETE FROM facturas_x_envio WHERE (id_factura = pid_factura AND id_envio = pid_envio);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_mantenimiento(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM mantenimiento WHERE (id_mantenimiento = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_producto(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM producto WHERE (id_producto = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_producto_x_envio(pid_producto INTEGER, pid_envio INTEGER) RETURNS VOID AS 
$$
	DELETE FROM producto_x_envio WHERE (id_producto = pid_producto AND id_envio = pid_envio);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_provincia(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM provincia WHERE (id_provincia = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_punto(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM punto WHERE (id_punto = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_puntos_x_ruta(pid_punto INTEGER, pid_ruta INTEGER) RETURNS VOID AS 
$$
	DELETE FROM puntos_x_ruta WHERE (id_ruta = pid_ruta AND id_punto = pid_punto);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_recoger(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM recoger WHERE (id_recoger = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_ruta(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM ruta WHERE (id_ruta = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_salario(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM salario WHERE (id_salario = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_taller(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM taller WHERE (id_taller = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_telefono_bodega(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM telefono_bodega WHERE (id_telefono = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_telefono_cliente(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM telefono_cliente WHERE (id_telefono = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_telefono_distribuidor(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM telefono_distribuidor WHERE (id_telefono = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_telefono_empleado(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM telefono_empleado WHERE (id_telefono = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_telefono_taller(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM telefono_taller WHERE (id_telefono = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_tipo_combustible(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM tipo_combustible WHERE (id_tipo_combustible = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_tipo_empleado(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM tipo_empleado WHERE (id_tipo_empleado = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_tipo_envio(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM tipo_envio WHERE (id_tipo_envio = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_tipo_mantenimiento(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM tipo_mantenimiento WHERE (id_tipo_mantenimiento = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_tipo_vehiculo(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM tipo_vehiculo WHERE (id_tipo_vehiculo = id);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION eliminar_vehiculo(id INTEGER) RETURNS VOID AS 
$$
	DELETE FROM vehiculo WHERE (id_vehiculo = id);
$$ LANGUAGE SQL;
