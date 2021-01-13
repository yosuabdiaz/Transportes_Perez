CREATE ROLE usuario_admin WITH
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