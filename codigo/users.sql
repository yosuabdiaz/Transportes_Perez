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

GRANT SELECT ON bodega TO administrador;
GRANT UPDATE ON bodega TO administrador;
GRANT INSERT ON bodega TO administrador;
GRANT DELETE ON bodega TO administrador;
GRANT TRUNCATE ON bodega TO administrador;
GRANT REFERENCES ON bodega TO administrador;
GRANT TRIGGER ON bodega TO administrador;

GRANT SELECT ON canton TO administrador;
GRANT UPDATE ON canton TO administrador;
GRANT INSERT ON canton TO administrador;
GRANT DELETE ON canton TO administrador;
GRANT TRUNCATE ON canton TO administrador;
GRANT REFERENCES ON canton TO administrador;
GRANT TRIGGER ON canton TO administrador;

GRANT SELECT ON cliente TO administrador;
GRANT UPDATE ON cliente TO administrador;
GRANT INSERT ON cliente TO administrador;
GRANT DELETE ON cliente TO administrador;
GRANT TRUNCATE ON cliente TO administrador;
GRANT REFERENCES ON cliente TO administrador;
GRANT TRIGGER ON cliente TO administrador;

GRANT SELECT ON codigo_postal TO administrador;
GRANT UPDATE ON codigo_postal TO administrador;
GRANT INSERT ON codigo_postal TO administrador;
GRANT DELETE ON codigo_postal TO administrador;
GRANT TRUNCATE ON codigo_postal TO administrador;
GRANT REFERENCES ON codigo_postal TO administrador;
GRANT TRIGGER ON codigo_postal TO administrador;

GRANT SELECT ON convenio TO administrador;
GRANT UPDATE ON convenio TO administrador;
GRANT INSERT ON convenio TO administrador;
GRANT DELETE ON convenio TO administrador;
GRANT TRUNCATE ON convenio TO administrador;
GRANT REFERENCES ON convenio TO administrador;
GRANT TRIGGER ON convenio TO administrador;

GRANT SELECT ON convenio_x_envio TO administrador;
GRANT UPDATE ON convenio_x_envio TO administrador;
GRANT INSERT ON convenio_x_envio TO administrador;
GRANT DELETE ON convenio_x_envio TO administrador;
GRANT TRUNCATE ON convenio_x_envio TO administrador;
GRANT REFERENCES ON convenio_x_envio TO administrador;
GRANT TRIGGER ON convenio_x_envio TO administrador;

GRANT SELECT ON correo_bodega TO administrador;
GRANT UPDATE ON correo_bodega TO administrador;
GRANT INSERT ON correo_bodega TO administrador;
GRANT DELETE ON correo_bodega TO administrador;
GRANT TRUNCATE ON correo_bodega TO administrador;
GRANT REFERENCES ON correo_bodega TO administrador;
GRANT TRIGGER ON correo_bodega TO administrador;

GRANT SELECT ON correo_cliente TO administrador;
GRANT UPDATE ON correo_cliente TO administrador;
GRANT INSERT ON correo_cliente TO administrador;
GRANT DELETE ON correo_cliente TO administrador;
GRANT TRUNCATE ON correo_cliente TO administrador;
GRANT REFERENCES ON correo_cliente TO administrador;
GRANT TRIGGER ON correo_cliente TO administrador;

GRANT SELECT ON correo_distribuidor TO administrador;
GRANT UPDATE ON correo_distribuidor TO administrador;
GRANT INSERT ON correo_distribuidor TO administrador;
GRANT DELETE ON correo_distribuidor TO administrador;
GRANT TRUNCATE ON correo_distribuidor TO administrador;
GRANT REFERENCES ON correo_distribuidor TO administrador;
GRANT TRIGGER ON correo_distribuidor TO administrador;

GRANT SELECT ON correo_empleado TO administrador;
GRANT UPDATE ON correo_empleado TO administrador;
GRANT INSERT ON correo_empleado TO administrador;
GRANT DELETE ON correo_empleado TO administrador;
GRANT TRUNCATE ON correo_empleado TO administrador;
GRANT REFERENCES ON correo_empleado TO administrador;
GRANT TRIGGER ON correo_empleado TO administrador;

GRANT SELECT ON correo_taller TO administrador;
GRANT UPDATE ON correo_taller TO administrador;
GRANT INSERT ON correo_taller TO administrador;
GRANT DELETE ON correo_taller TO administrador;
GRANT TRUNCATE ON correo_taller TO administrador;
GRANT REFERENCES ON correo_taller TO administrador;
GRANT TRIGGER ON correo_taller TO administrador;

GRANT SELECT ON costo TO administrador;
GRANT UPDATE ON costo TO administrador;
GRANT INSERT ON costo TO administrador;
GRANT DELETE ON costo TO administrador;
GRANT TRUNCATE ON costo TO administrador;
GRANT REFERENCES ON costo TO administrador;
GRANT TRIGGER ON costo TO administrador;

GRANT SELECT ON departamento TO administrador;
GRANT UPDATE ON departamento TO administrador;
GRANT INSERT ON departamento TO administrador;
GRANT DELETE ON departamento TO administrador;
GRANT TRUNCATE ON departamento TO administrador;
GRANT REFERENCES ON departamento TO administrador;
GRANT TRIGGER ON departamento TO administrador;

--Esto hace lo mismo, donde habilitamos todo al administrador
GRANT ALL ON TABLE public.departamento_x_bodega TO administrador;

GRANT ALL ON TABLE public.detalle_costo TO administrador;

GRANT ALL ON TABLE public.detalle_mantenimiento TO administrador;

GRANT ALL ON TABLE public.direccion TO administrador;

GRANT ALL ON TABLE public.distribuidor TO administrador;

GRANT ALL ON TABLE public.distrito TO administrador;

GRANT ALL ON TABLE public.empleado TO administrador;

GRANT ALL ON TABLE public.empleado_x_departamento TO administrador;

GRANT ALL ON TABLE public.entrega_bodega TO administrador;

GRANT ALL ON TABLE public.envio TO administrador;

GRANT ALL ON TABLE public.factura_distribuidor TO administrador;

GRANT ALL ON TABLE public.factura_x_entrega TO administrador;

GRANT ALL ON TABLE public.factura_x_recoger TO administrador;

GRANT ALL ON TABLE public.facturas_x_envio TO administrador;

GRANT ALL ON TABLE public.mantenimiento TO administrador;

GRANT ALL ON TABLE public.producto TO administrador;

GRANT ALL ON TABLE public.producto_x_envio TO administrador;

GRANT ALL ON TABLE public.provincia TO administrador;

GRANT ALL ON TABLE public.punto TO administrador;

GRANT ALL ON TABLE public.puntos_x_ruta TO administrador;

GRANT ALL ON TABLE public.recoger TO administrador;

GRANT ALL ON TABLE public.ruta TO administrador;

GRANT ALL ON TABLE public.salario TO administrador;

GRANT ALL ON TABLE public.taller TO administrador;

GRANT ALL ON TABLE public.telefono_bodega TO administrador;

GRANT ALL ON TABLE public.telefono_cliente TO administrador;

GRANT ALL ON TABLE public.telefono_distribuidor TO administrador;

GRANT ALL ON TABLE public.telefono_empleado TO administrador;

GRANT ALL ON TABLE public.telefono_taller TO administrador;

GRANT ALL ON TABLE public.tipo_combustible TO administrador;

GRANT ALL ON TABLE public.tipo_empleado TO administrador;

GRANT ALL ON TABLE public.tipo_envio TO administrador;

GRANT ALL ON TABLE public.tipo_mantenimiento TO administrador;

GRANT ALL ON TABLE public.tipo_vehiculo TO administrador;

GRANT ALL ON TABLE public.vehiculo TO administrador;


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



