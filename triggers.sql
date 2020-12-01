
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


