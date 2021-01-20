/*CREATE ROLE usuario_admin WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	REPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'xxxxxx'; -- admin
COMMENT ON ROLE usuario_admin IS 'Administrador de Data Server ';

CREATE ROLE usuario_normal WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'xxxxxx'; -- normal

CREATE ROLE usuario_respaldo WITH
	LOGIN
	NOSUPERUSER
	CREATEDB
	NOCREATEROLE
	NOINHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'xxxxxx'; --respaldo
COMMENT ON ROLE usuario_respaldo IS 'Usuario normal tiene acceso a tablas y funciones';
*/

------------------------------------CREACION ROLES Y PRIVILEGIOS

---Eliminar ROL(carpeta)
--DROP ROLE adminrole;

--Rol
CREATE ROLE administrador;
CREATE ROLE respaldo;
ALTER ROLE respaldo
	REPLICATION;     --Le asignamos que puede hacer backups
CREATE ROLE usuariobasico;

--Permisos a todo el esquema.
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO administrador;

-----------------------------------------Usuario normal-------
GRANT SELECT ON bodega TO usuariobasico;

GRANT SELECT ON canton TO usuariobasico;

GRANT SELECT ON cliente TO usuariobasico;

GRANT SELECT ON codigo_postal TO usuariobasico;

GRANT SELECT ON convenio TO usuariobasico;

GRANT SELECT ON convenio_x_envio TO usuariobasico;

GRANT SELECT ON correo_bodega TO usuariobasico;

GRANT SELECT ON correo_cliente TO usuariobasico;

GRANT SELECT ON correo_distribuidor TO usuariobasico;

GRANT SELECT ON correo_empleado TO usuariobasico;

GRANT SELECT ON correo_taller TO usuariobasico;

GRANT SELECT ON costo TO usuariobasico;

GRANT SELECT ON departamento TO usuariobasico;

GRANT SELECT ON departamento_x_bodega TO usuariobasico;

GRANT SELECT ON detalle_costo TO usuariobasico;

GRANT SELECT ON detalle_mantenimiento TO usuariobasico;

GRANT SELECT ON direccion TO usuariobasico;

GRANT SELECT ON distribuidor TO usuariobasico;

GRANT SELECT ON distrito TO usuariobasico;

GRANT SELECT ON empleado TO usuariobasico;

GRANT SELECT ON empleado_x_departamento TO usuariobasico;

GRANT SELECT ON entrega_bodega TO usuariobasico;

GRANT SELECT ON envio TO usuariobasico;

GRANT SELECT ON factura_distribuidor TO usuariobasico;

GRANT SELECT ON factura_x_entrega TO usuariobasico;

GRANT SELECT ON factura_x_recoger TO usuariobasico;

GRANT SELECT ON facturas_x_envio TO usuariobasico;

GRANT SELECT ON mantenimiento TO usuariobasico;

GRANT SELECT ON producto TO usuariobasico;

GRANT SELECT ON producto_x_envio TO usuariobasico;

GRANT SELECT ON provincia TO usuariobasico;

GRANT SELECT ON punto TO usuariobasico;

GRANT SELECT ON puntos_x_ruta TO usuariobasico;

GRANT SELECT ON recoger TO usuariobasico;

GRANT SELECT ON ruta TO usuariobasico;

GRANT SELECT ON salario TO usuariobasico;

GRANT SELECT ON taller TO usuariobasico;

GRANT SELECT ON telefono_bodega TO usuariobasico;

GRANT SELECT ON telefono_cliente TO usuariobasico;

GRANT SELECT ON telefono_distribuidor TO usuariobasico;

GRANT SELECT ON telefono_empleado TO usuariobasico;

GRANT SELECT ON telefono_taller TO usuariobasico;

GRANT SELECT ON tipo_combustible TO usuariobasico;

GRANT SELECT ON tipo_empleado TO usuariobasico;

GRANT SELECT ON tipo_envio TO usuariobasico;

GRANT SELECT ON tipo_mantenimiento TO usuariobasico;

GRANT SELECT ON tipo_vehiculo TO usuariobasico;

GRANT SELECT ON vehiculo TO usuariobasico;
--------------------------------------------------------------------

CREATE ROLE usuario_normal with PASSWORD '1234';

--a usuario le damos los permisos de usuario basico
GRANT usuariobasico TO usuario_normal;
--le damos permiso de login
ALTER ROLE usuario_normal with login;


CREATE ROLE usuario_admin with PASSWORD 'admin';
--a admintec le damos los permisos de administrador
GRANT administrador TO usuario_admin;
--le damos permiso de login
ALTER ROLE usuario_admin with login;

CREATE ROLE usuario_respaldo with PASSWORD '1234';
--a backup le damos los permisos de respaldo
GRANT respaldo TO usuario_respaldo;
--le damos permiso de login
ALTER ROLE usuario_respaldo with login;



