
CREATE OR REPLACE FUNCTION mayuscula_Canton() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		RAISE NOTICE 'Insertado en mayuscula';
		NEW.descripcion := resultado;
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_canton
	BEFORE INSERT 
	ON canton
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Canton();


CREATE OR REPLACE FUNCTION mayuscula_Cliente() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.nombre);
		NEW.nombre := resultado;
		resultado := upper(NEW.apellido1);
		NEW.apellido1 := resultado;
		resultado := upper(NEW.apellido2);
		NEW.apellido2 := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_cliente
	BEFORE INSERT 
	ON cliente
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Cliente();

CREATE OR REPLACE FUNCTION mayuscula_Convenio() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_convenio
	BEFORE INSERT 
	ON convenio
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Convenio();

CREATE OR REPLACE FUNCTION mayuscula_Departamento() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.nombre);
		NEW.nombre := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_departamento
	BEFORE INSERT 
	ON departamento
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Departamento();

CREATE OR REPLACE FUNCTION mayuscula_Detalle_Costo() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_detalle_costo
	BEFORE INSERT 
	ON detalle_costo
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Detalle_Costo();

CREATE OR REPLACE FUNCTION mayuscula_Detalle_Mantenimiento() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_detalle_mantenimiento
	BEFORE INSERT 
	ON detalle_mantenimiento
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Detalle_Mantenimiento();

CREATE OR REPLACE FUNCTION mayuscula_Direccion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_direccion
	BEFORE INSERT 
	ON direccion
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Direccion();

CREATE OR REPLACE FUNCTION mayuscula_Distribuidor() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.razon_comercial);
		NEW.razon_comercial := resultado;
		resultado := upper(NEW.razon_social);
		NEW.razon_social := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_distribuidor
	BEFORE INSERT 
	ON distribuidor
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Distribuidor();

CREATE OR REPLACE FUNCTION mayuscula_Distrito() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_distrito
	BEFORE INSERT 
	ON distrito
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Distrito();

CREATE OR REPLACE FUNCTION mayuscula_Empleado() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.nombre);
		NEW.nombre := resultado;
		resultado := upper(NEW.apellido1);
		NEW.apellido1 := resultado;
		resultado := upper(NEW.apellido2);
		NEW.apellido2 := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_empleado
	BEFORE INSERT 
	ON empleado
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Empleado();


CREATE OR REPLACE FUNCTION mayuscula_Envio() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.estado);
		NEW.estado := resultado;
		
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_envio
	BEFORE INSERT 
	ON envio
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Envio();

CREATE OR REPLACE FUNCTION mayuscula_Mantenimiento() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.nota_general);
		NEW.nota_general := resultado;
		
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_modificar_insercion_mantenimiento
	BEFORE INSERT 
	ON mantenimiento
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Mantenimiento();


CREATE OR REPLACE FUNCTION mayuscula_Producto() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_Producto
	BEFORE INSERT 
	ON producto
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Mantenimiento();

CREATE OR REPLACE FUNCTION mayuscula_Provincia() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_Provincia
	BEFORE INSERT 
	ON provincia
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Provincia();

CREATE OR REPLACE FUNCTION mayuscula_Punto() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_Punto
	BEFORE INSERT 
	ON punto
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Punto();

CREATE OR REPLACE FUNCTION mayuscula_Recoger() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.estatus);
		NEW.estatus := resultado;
		
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_recoger
	BEFORE INSERT 
	ON recoger
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Recoger();

CREATE OR REPLACE FUNCTION mayuscula_Ruta() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_ruta
	BEFORE INSERT 
	ON ruta
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Ruta();

CREATE OR REPLACE FUNCTION mayuscula_Taller() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		resultado := upper(NEW.razon_comercial);
		NEW.razon_comercial := resultado;
		resultado := upper(NEW.razon_social);
		NEW.razon_social := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_taller
	BEFORE INSERT 
	ON taller
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Taller();

CREATE OR REPLACE FUNCTION mayuscula_Tipo_Combustible() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_tipo_combustible
	BEFORE INSERT 
	ON tipo_combustible
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Tipo_Combustible();

CREATE OR REPLACE FUNCTION mayuscula_Tipo_Empleado() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_tipo_empleado
	BEFORE INSERT 
	ON tipo_empleado
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Tipo_Empleado();

CREATE OR REPLACE FUNCTION mayuscula_Tipo_Envio() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_tipo_envio
	BEFORE INSERT 
	ON tipo_envio
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Tipo_Envio();

CREATE OR REPLACE FUNCTION mayuscula_Tipo_Mantenimiento() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_tipo_mantenimiento
	BEFORE INSERT 
	ON tipo_mantenimiento
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Tipo_Mantenimiento();

CREATE OR REPLACE FUNCTION mayuscula_Tipo_Vehiculo() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_tipo_vehiculo
	BEFORE INSERT 
	ON tipo_vehiculo
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Tipo_Vehiculo();

CREATE OR REPLACE FUNCTION mayuscula_Vehiculo() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.estado);
		NEW.descripcion := resultado;
		resultado := upper(NEW.marca);
		NEW.marca := resultado;
		resultado := upper(NEW.modelo);
		NEW.modelo := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER mayuscula_vehiculo
	BEFORE INSERT 
	ON vehiculo
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Vehiculo();


--Triggers para actualizar---

CREATE TRIGGER trigger_modificar_actualizacion_canton
	BEFORE UPDATE 
	ON canton
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Canton();


CREATE OR REPLACE FUNCTION mayuscula_Cliente_nombre() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.nombre);
		NEW.nombre := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_cliente_nombre
	BEFORE UPDATE 
	ON cliente
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Cliente_nombre();


CREATE OR REPLACE FUNCTION mayuscula_Cliente_apellido1() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.apellido1);
		NEW.apellido1 := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_cliente_apellido1
	BEFORE UPDATE 
	ON cliente
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Cliente_apellido1();

CREATE OR REPLACE FUNCTION mayuscula_Cliente_apellido2() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.apellido2);
		NEW.apellido2 := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_cliente_apellido2
	BEFORE UPDATE 
	ON cliente
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Cliente_apellido2();


CREATE OR REPLACE FUNCTION mayuscula_Convenio_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_convenio_descripcion
	BEFORE UPDATE 
	ON convenio
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Convenio_descripcion();


CREATE OR REPLACE FUNCTION mayuscula_Departamento_nombre() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.nombre);
		NEW.nombre := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_departamento_nombre
	BEFORE UPDATE 
	ON departamento
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Departamento_nombre();



CREATE OR REPLACE FUNCTION mayuscula_Detalle_Costo_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_detalle_costo_descripcion
	BEFORE UPDATE 
	ON detalle_costo
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Detalle_Costo_descripcion();



CREATE OR REPLACE FUNCTION mayuscula_Detalle_Mantenimiento_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_detalle_mantenimiento_descripcion
	BEFORE UPDATE 
	ON detalle_mantenimiento
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Detalle_Mantenimiento_descripcion();



CREATE OR REPLACE FUNCTION mayuscula_Direccion_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_direccion_descripcion
	BEFORE UPDATE 
	ON direccion
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Direccion_descripcion();



CREATE OR REPLACE FUNCTION mayuscula_Distribuidor_RC() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.razon_comercial);
		NEW.razon_comercial := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_distribuidor_RC
	BEFORE UPDATE 
	ON distribuidor
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Distribuidor_RC();

CREATE OR REPLACE FUNCTION mayuscula_Distribuidor_RS() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.razon_social);
		NEW.razon_social := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_distribuidor_RS
	BEFORE UPDATE 
	ON distribuidor
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Distribuidor_RS();


CREATE OR REPLACE FUNCTION mayuscula_Distrito_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_distrito_descipcion
	BEFORE UPDATE 
	ON distrito
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Distrito_descripcion();



CREATE OR REPLACE FUNCTION mayuscula_Empleado_nombre() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.nombre);
		NEW.nombre := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_empleado_nombre
	BEFORE UPDATE 
	ON empleado
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Empleado_nombre();


CREATE OR REPLACE FUNCTION mayuscula_Empleado_apellido1() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.apellido1);
		NEW.apellido1 := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_empleado_apellido1
	BEFORE UPDATE 
	ON empleado
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Empleado_apellido1();

CREATE OR REPLACE FUNCTION mayuscula_Empleado_apellido2() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.apellido2);
		NEW.apellido2 := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_empleado_apellido2
	BEFORE UPDATE 
	ON empleado
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Empleado_apellido2();



CREATE OR REPLACE FUNCTION mayuscula_Entrega_Bodega_estatus() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.estatus);
		NEW.estatus := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_entrega_bodega_nombre
	BEFORE UPDATE 
	ON public.entrega_bodega
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Entrega_Bodega_estatus();




CREATE OR REPLACE FUNCTION mayuscula_Envio_estado() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.estado);
		NEW.estado := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_envio_estado
	BEFORE UPDATE 
	ON public.envio
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Envio_estado();


CREATE OR REPLACE FUNCTION mayuscula_Mantenimiento_nota_general() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.nota_general);
		NEW.nota_general := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_mante_nota
	BEFORE UPDATE 
	ON public.mantenimiento
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Mantenimiento_nota_general();



CREATE OR REPLACE FUNCTION mayuscula_Producto_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_produ_descripcion
	BEFORE UPDATE 
	ON public.producto
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Producto_descripcion();



CREATE OR REPLACE FUNCTION mayuscula_Provincia_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_provincia_descripcion
	BEFORE UPDATE 
	ON public.provincia
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Provincia_descripcion();


CREATE OR REPLACE FUNCTION mayuscula_Punto_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_punto_descripcion
	BEFORE UPDATE 
	ON public.punto
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Punto_descripcion();


CREATE OR REPLACE FUNCTION mayuscula_Recoger_estatus() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.estatus);
		NEW.estatus := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_recoger_estatus
	BEFORE UPDATE 
	ON public.recoger
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Recoger_estatus();


CREATE OR REPLACE FUNCTION mayuscula_Ruta_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_ruta_descripcion
	BEFORE UPDATE 
	ON public.ruta
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Ruta_descripcion();


CREATE OR REPLACE FUNCTION mayuscula_Taller_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_taller_descripcion
	BEFORE UPDATE 
	ON public.taller
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Taller_descripcion();

CREATE OR REPLACE FUNCTION mayuscula_Taller_RC() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.razon_comercial);
		NEW.razon_comercial := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_taller_RC
	BEFORE UPDATE 
	ON public.taller
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Taller_RC();
	
CREATE OR REPLACE FUNCTION mayuscula_Taller_RS() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.razon_social);
		NEW.razon_social := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_taller_RS
	BEFORE UPDATE 
	ON public.taller
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_Taller_RS();



CREATE OR REPLACE FUNCTION mayuscula_TC_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_tc_descripcion
	BEFORE UPDATE 
	ON public.tipo_combustible
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_TC_descripcion();

CREATE OR REPLACE FUNCTION mayuscula_TE_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_te_descripcion
	BEFORE UPDATE 
	ON public.tipo_empleado
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_TE_descripcion();


CREATE OR REPLACE FUNCTION mayuscula_TENVIO_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_tenvio_descripcion
	BEFORE UPDATE 
	ON public.tipo_envio
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_TENVIO_descripcion();


CREATE OR REPLACE FUNCTION mayuscula_TM_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_tm_descripcion
	BEFORE UPDATE 
	ON public.tipo_mantenimiento
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_TM_descripcion();


CREATE OR REPLACE FUNCTION mayuscula_TV_descripcion() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.descripcion);
		NEW.descripcion := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_tv_descripcion
	BEFORE UPDATE 
	ON public.tipo_vehiculo
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_TV_descripcion();



CREATE OR REPLACE FUNCTION mayuscula_V_estado() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.estado);
		NEW.estado := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_v_estado
	BEFORE UPDATE 
	ON public.vehiculo
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_V_estado();

CREATE OR REPLACE FUNCTION mayuscula_V_marca() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.marca);
		NEW.marca := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_v_marca
	BEFORE UPDATE 
	ON public.vehiculo
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_V_marca();
	
CREATE OR REPLACE FUNCTION mayuscula_V_modelo() RETURNS trigger AS
$$
	DECLARE
		resultado text;
	BEGIN
		resultado := upper(NEW.modelo);
		NEW.modelo := resultado;
		RAISE NOTICE 'Insertado en mayuscula';
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_actualizacion_v_modelo
	BEFORE UPDATE 
	ON public.vehiculo
	FOR EACH ROW
	EXECUTE PROCEDURE mayuscula_V_modelo();


CREATE OR REPLACE FUNCTION no_eliminar() RETURNS trigger AS
$$
	BEGIN
		RAISE NOTICE 'No se permite borrar de esta tabla';
		RETURN NULL;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_no_eliminar_cliente
	BEFORE DELETE 
	ON public.cliente
	FOR EACH ROW
	EXECUTE PROCEDURE no_eliminar();
	
CREATE TRIGGER trigger_no_eliminar_distribuidor 
	BEFORE DELETE 
	ON public.distribuidor
	FOR EACH ROW
	EXECUTE PROCEDURE no_eliminar();
	
	
CREATE TRIGGER trigger_no_eliminar_envio
	BEFORE DELETE 
	ON public.envio
	FOR EACH ROW
	EXECUTE PROCEDURE no_eliminar();
	
	
CREATE TRIGGER trigger_no_eliminar_producto
	BEFORE DELETE 
	ON public.producto
	FOR EACH ROW
	EXECUTE PROCEDURE no_eliminar();
	
CREATE TRIGGER trigger_no_eliminar_punto
	BEFORE DELETE 
	ON public.punto
	FOR EACH ROW
	EXECUTE PROCEDURE no_eliminar();	
	
CREATE TRIGGER trigger_no_eliminar_ruta
	BEFORE DELETE 
	ON public.ruta
	FOR EACH ROW
	EXECUTE PROCEDURE no_eliminar();
	