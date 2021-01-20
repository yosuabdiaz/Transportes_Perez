
INSERT INTO departamento(nombre)
VALUES      ('Logistica');

INSERT INTO departamento(nombre)
VALUES      ('Servicio al cliente');

INSERT INTO departamento(nombre)
VALUES      ('Transporte');

INSERT INTO tipo_envio(descripcion)
VALUES      ('Tortuguero');

INSERT INTO tipo_envio(descripcion)
VALUES      ('Nicaragua');

--DELETE FROM producto WHERE id_producto != 1
--ALTER SEQUENCE public.producto_id_producto_seq RESTART WITH 1

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Cama matrimonial',20000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Refri una puerta',25000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Refri dos puertas',35000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Sillon 1 asiento',10000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Sillon 2 asientos',20000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Sillon 3 asientos',30000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Pantalla 30pul',20000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Pantalla 40pul',30000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Pantalla 50pul',40000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Pantalla 60pul',50000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('Cama individual',10000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('cocina pequeña',10000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('cocina mediana',10000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('cocina grande',10000);

INSERT INTO producto(descripcion,costo_envio)
VALUES 	    ('cocina industrial',20000);

INSERT INTO provincia(descripcion)
VALUES      ('San Jose');

INSERT INTO provincia(descripcion)
VALUES      ('Heredia');

INSERT INTO provincia(descripcion)
VALUES      ('Cartago');

INSERT INTO provincia(descripcion)
VALUES      ('Limon');

INSERT INTO provincia(descripcion)
VALUES      ('Puntarenas');

INSERT INTO provincia(descripcion)
VALUES      ('Alajuela');

INSERT INTO provincia(descripcion)
VALUES      ('Guanacaste');

INSERT INTO distrito(descripcion)
VALUES      	('Aserri'); --san jose aserri

INSERT INTO distrito(descripcion)
VALUES      	('Atenas'); -- alajuela atenas
				 
INSERT INTO distrito(descripcion)
VALUES      	('El Tejar'); -- cartago El Guarco

INSERT INTO distrito(descripcion)
VALUES      	('San Antonio'); -- heredia Belen

INSERT INTO distrito(descripcion)
VALUES      	('La Fortuna'); -- Guanacaste Bagaces

INSERT INTO distrito(descripcion)
VALUES      	('Limoncito'); -- Puntarenas Coto Brus

INSERT INTO distrito(descripcion)
VALUES      	('El Cairo'); -- Limon Siquirres

INSERT INTO canton(descripcion)
VALUES      	('Aserri'); --san jose aserri

INSERT INTO canton(descripcion)
VALUES      	('Atenas'); -- alajuela atenas
				 
INSERT INTO canton(descripcion)
VALUES      	('El Guarco'); -- cartago El Guarco

INSERT INTO canton(descripcion)
VALUES      	('Belen'); -- heredia Belen

INSERT INTO canton(descripcion)
VALUES      	('Bagaces'); -- Guanacaste Bagaces

INSERT INTO canton(descripcion)
VALUES      	('Coto Brus'); -- Puntarenas Coto Brus

INSERT INTO canton(descripcion)
VALUES      	('Siquirres'); -- Limon Siquirres

INSERT INTO ruta(descripcion)
VALUES      ('principal');

INSERT INTO ruta(descripcion)
VALUES      ('secundaria');

INSERT INTO ruta(descripcion)
VALUES      ('larga emergencia');

INSERT INTO ruta(descripcion)
VALUES      ('por guanacaste');

INSERT INTO ruta(descripcion)
VALUES      ('por surqui');

INSERT INTO ruta(descripcion)
VALUES      ('por san jose');

INSERT INTO ruta(descripcion)
VALUES      ('por heredia');

INSERT INTO ruta(descripcion)
VALUES      ('por alajuela');

INSERT INTO ruta(descripcion)
VALUES      ('por calle vieja');

INSERT INTO ruta(descripcion)
VALUES      ('sin peaje');

INSERT INTO ruta(descripcion)
VALUES      ('con peaje ');

INSERT INTO ruta(descripcion)
VALUES      ('directa');

INSERT INTO ruta(descripcion)
VALUES      ('heredia sin peaje');

INSERT INTO ruta(descripcion)
VALUES      ('Guana sin peaje');

INSERT INTO ruta(descripcion)
VALUES      ('alajuela sin peaje');

INSERT INTO tipo_combustible(descripcion)
VALUES      ('Disel');

INSERT INTO tipo_combustible(descripcion)
VALUES      ('plus');

INSERT INTO tipo_combustible(descripcion)
VALUES      ('gas');

INSERT INTO tipo_combustible(descripcion)
VALUES      ('Disel y gas');

INSERT INTO tipo_combustible(descripcion)
VALUES      ('plus y gas');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('motor');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('transmicion');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('frenos');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('radiador');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('fuga aceite');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('electrico');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('arrancador');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('llantas');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('cajon');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('suspencion');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('catalizador');

INSERT INTO tipo_mantenimiento(descripcion)
VALUES      ('frenos de aire');

INSERT INTO codigo_postal (id_provincia,id_distrito,id_canton)
VALUES      (1,1,1);

INSERT INTO codigo_postal (id_provincia,id_distrito,id_canton)
VALUES      (2,4,4);

INSERT INTO codigo_postal (id_provincia,id_distrito,id_canton)
VALUES      (3,3,3);

INSERT INTO codigo_postal (id_provincia,id_distrito,id_canton)
VALUES      (4,7,7);

INSERT INTO codigo_postal (id_provincia,id_distrito,id_canton)
VALUES      (5,6,5);

INSERT INTO codigo_postal (id_provincia,id_distrito,id_canton)
VALUES      (6,2,2);

INSERT INTO codigo_postal (id_provincia,id_distrito,id_canton)
VALUES      (7,5,6);

INSERT INTO direccion(id_codigo,descripcion)
VALUES      (1,'direccion 1');

INSERT INTO direccion(id_codigo,descripcion)
VALUES      (2,'direccion 2');

INSERT INTO direccion(id_codigo,descripcion)
VALUES      (3,'direccion 3');

INSERT INTO direccion(id_codigo,descripcion)
VALUES      (4,'direccion 4');

INSERT INTO direccion(id_codigo,descripcion)
VALUES      (5,'direccion 5');

INSERT INTO direccion(id_codigo,descripcion)
VALUES      (6,'direccion 6');

INSERT INTO direccion(id_codigo,descripcion)
VALUES      (7,'direccion 7');

INSERT INTO cliente(nombre,apellido1,apellido2,cedula,id_direccion)
VALUES     ('cliente1','apellido1','apellido2',88888888,1);

INSERT INTO cliente(nombre,apellido1,apellido2,cedula,id_direccion)
VALUES     ('cliente2','apellido1','apellido2',77777777,2);

INSERT INTO cliente(nombre,apellido1,apellido2,cedula,id_direccion)
VALUES     ('cliente3','apellido1','apellido2',88887777,3);

INSERT INTO cliente(nombre,apellido1,apellido2,cedula,id_direccion)
VALUES     ('Ricardo','Vargas','chamorro',88777777,4);

INSERT INTO cliente(nombre,apellido1,apellido2,cedula,id_direccion)
VALUES     ('Gerardo','Barquero','Barquero',8888127,5);

INSERT INTO cliente(nombre,apellido1,apellido2,cedula,id_direccion)
VALUES     ('Enrique','amato','amato',82227777,6);
 
INSERT INTO cliente(nombre,apellido1,apellido2,cedula,id_direccion)
VALUES     ('Allan','soto','soto',88887717,5);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('RC_distribuidor1',123123,'RS_distribuidor1',true,1);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('RC_distribuidor2',234432,'RS_distribuidor2',true,2);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('RC_distribuidor3',543345,'RS_distribuidor3',true,3);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('ARSA',1111122122,'ARSA S.A',true,3);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('SUR COLOR',111118782,'SUR COLOR S.A',true,3);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('FIBROCENTRO',123456989,'FIBROCENTRO S.A',true,3);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('UNIDOR MAYOREO',7676767645,'UNIDOR MAYOREO S.A',true,3);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('UNIVERSAL TORN',2121222,'UNIV TOR S.A',true,3);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('GRUPO Q',2222,'GRUPO Q S.A',true,3);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('GONHER',22252,'GONHER S.A',true,3);

INSERT INTO distribuidor(razon_comercial,cedula_juridica,razon_social,habitual,id_direccion)
VALUES     ('PLASTIMEX',222522,'PLASTIMEX S.A',true,3);




INSERT INTO tipo_empleado(descripcion)
VALUES   ('colaborador');

INSERT INTO tipo_empleado(descripcion)
VALUES   ('Dueño');

INSERT INTO tipo_empleado(descripcion)
VALUES   ('Gerente general');

INSERT INTO tipo_empleado(descripcion)
VALUES   ('Jefe');

INSERT INTO empleado(nombre,apellido1,apellido2,fecha_nacimiento,id_tipo_empleado,fecha_inicio)
VALUES ('empleado 1','apellido1','apellido2','01/01/1971',2,'01/01/1991');


INSERT INTO empleado(nombre,apellido1,apellido2,fecha_nacimiento,id_tipo_empleado,fecha_inicio)
VALUES ('empleado 2','apellido1','apellido2','01/01/1972',3,'01/01/1992');


INSERT INTO empleado(nombre,apellido1,apellido2,fecha_nacimiento,id_tipo_empleado,fecha_inicio)
VALUES ('empleado 3','apellido1','apellido2','01/01/1973',4,'01/01/1993');

INSERT INTO empleado(nombre,apellido1,apellido2,fecha_nacimiento,id_tipo_empleado,fecha_inicio)
VALUES ('empleado 4','apellido1','apellido2','01/01/1974',4,'01/01/1994');

INSERT INTO empleado(nombre,apellido1,apellido2,fecha_nacimiento,id_tipo_empleado,fecha_inicio)
VALUES ('empleado 5','apellido1','apellido2','01/01/1975',4,'01/01/1995');

INSERT INTO empleado(nombre,apellido1,apellido2,fecha_nacimiento,id_tipo_empleado,fecha_inicio)
VALUES ('empleado 6','apellido1','apellido2','01/01/1976',4,'01/01/1996');


INSERT INTO empleado_x_departamento (id_departamento,id_empleado)
VALUES (1,6);

INSERT INTO empleado_x_departamento (id_departamento,id_empleado)
VALUES (2,5);

INSERT INTO empleado_x_departamento (id_departamento,id_empleado)
VALUES (3,4);

INSERT INTO bodega (tamano,id_direccion)
VALUES (100,1);

INSERT INTO bodega (tamano,id_direccion)
VALUES (200,2);


INSERT INTO departamento_x_bodega(id_bodega,id_departamento)
VALUES (1,1);

INSERT INTO departamento_x_bodega(id_bodega,id_departamento)
VALUES (1,2);

INSERT INTO departamento_x_bodega(id_bodega,id_departamento)
VALUES (1,3);

INSERT INTO departamento_x_bodega(id_bodega,id_departamento)
VALUES (2,1);

INSERT INTO departamento_x_bodega(id_bodega,id_departamento)
VALUES (2,2);

INSERT INTO departamento_x_bodega(id_bodega,id_departamento)
VALUES (2,3);

INSERT INTO salario (id_empleado,horas_trabajadas,pago_x_hora,fecha_pago,horas_extra,pago_x_hora_extra)
VALUES (1,40,10000,'01/01/1999',5,15000);

INSERT INTO salario (id_empleado,horas_trabajadas,pago_x_hora,fecha_pago,horas_extra,pago_x_hora_extra)
VALUES (2,41,10000,'01/01/1999',6,15000);

INSERT INTO salario (id_empleado,horas_trabajadas,pago_x_hora,fecha_pago,horas_extra,pago_x_hora_extra)
VALUES (3,42,10000,'01/01/1999',7,15000);

INSERT INTO salario (id_empleado,horas_trabajadas,pago_x_hora,fecha_pago,horas_extra,pago_x_hora_extra)
VALUES (4,43,10000,'01/01/1999',8,15000);

INSERT INTO salario (id_empleado,horas_trabajadas,pago_x_hora,fecha_pago,horas_extra,pago_x_hora_extra)
VALUES (5,44,10000,'01/01/1999',9,15000);

INSERT INTO salario (id_empleado,horas_trabajadas,pago_x_hora,fecha_pago,horas_extra,pago_x_hora_extra)
VALUES (6,45,10000,'01/01/1999',5,15000);



INSERT INTO telefono_bodega(id_bodega,numero)
VALUES (1,88885555);

INSERT INTO telefono_bodega(id_bodega,numero)
VALUES (2,88886666);

INSERT INTO telefono_empleado(id_empleado,numero)
VALUES (1,88885555);

INSERT INTO telefono_empleado(id_empleado,numero)
VALUES (2,88886666);

INSERT INTO telefono_empleado(id_empleado,numero)
VALUES (3,88881111);

INSERT INTO telefono_empleado(id_empleado,numero)
VALUES (4,88882222);

INSERT INTO telefono_empleado(id_empleado,numero)
VALUES (5,88883333);

INSERT INTO telefono_empleado(id_empleado,numero)
VALUES (6,88884444);



INSERT INTO telefono_cliente(id_cliente,numero)
VALUES (1,88885555);

INSERT INTO telefono_cliente(id_cliente,numero)
VALUES (2,88886666);

INSERT INTO telefono_cliente(id_cliente,numero)
VALUES (3,88881111);


INSERT INTO telefono_distribuidor(id_distribuidor,numero)
VALUES (1,88885555);

INSERT INTO telefono_distribuidor(id_distribuidor,numero)
VALUES (1,88880000);

INSERT INTO telefono_distribuidor(id_distribuidor,numero)
VALUES (1,88889999);

INSERT INTO taller (id_direccion,descripcion,razon_comercial,razon_social,cedula_juridica)
VALUES (1,'taller1','RC1','RS1',11111111);

INSERT INTO taller (id_direccion,descripcion,razon_comercial,razon_social,cedula_juridica)
VALUES (2,'taller2','RC2','RS2',22222222);

INSERT INTO taller (id_direccion,descripcion,razon_comercial,razon_social,cedula_juridica)
VALUES (3,'taller3','RC3','RS3',33333333);

INSERT INTO taller (id_direccion,descripcion,razon_comercial,razon_social,cedula_juridica)
VALUES (4,'taller4','RC4','RS4',44444444);

INSERT INTO telefono_taller(id_taller,numero)
VALUES (1,88885555);

INSERT INTO telefono_taller(id_taller,numero)
VALUES (2,81235555);

INSERT INTO telefono_taller(id_taller,numero)
VALUES (3,82345555);

INSERT INTO telefono_taller(id_taller,numero)
VALUES (4,88345555);

INSERT INTO convenio(id_cliente,descripcion,monto,fecha,activo)
VALUES (1,'convenio1',120000,'01/01/1999',true);

INSERT INTO convenio(id_cliente,descripcion,monto,fecha,activo)
VALUES (2,'convenio2',150000,'01/01/2010',true);

INSERT INTO convenio(id_cliente,descripcion,monto,fecha,activo)
VALUES (3,'convenio3',190000,'01/01/2005',true);


INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (1,1,111111111,250000,'01/01/2005',10,12500);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (1,2,222222222,500000,'01/01/2005',9,25000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (1,3,33333333,1000000,'01/01/2005',25,50000);


INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (2,1,44444444,500000,'01/01/2005',15,25000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (2,2,55555555,500000,'01/01/2005',12,25000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (2,3,66666666,500000,'01/01/2005',13,25000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (3,1,77777777,1000000,'01/01/2005',25,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (3,2,88888888,1000000,'01/01/2005',22,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (3,3,99999999,1000000,'01/01/2005',23,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (2,2,12332111,1000000,'01/01/2005',23,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (2,2,12121222,1000000,'02/01/2005',23,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (2,2,323232665,1000000,'03/01/2005',23,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (2,2,88776655,1000000,'03/11/2020',23,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (2,2,12345554,1000000,'01/11/2020',23,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (4,2,1,1000000,'01/10/2020',10,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (4,2,2,1000000,'01/10/2020',5,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (5,2,3,1000000,'02/10/2020',10,50000);

INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
VALUES (5,2,4,1000000,'02/10/2020',10,50000);

INSERT INTO punto(id_direccion,descripcion,latitud,longitud,altitud,es_inicio,es_final)
VALUES (1,'descripcion',9.898697,-84.062199,1172,true,false);

INSERT INTO punto(id_direccion,descripcion,latitud,longitud,altitud,es_inicio,es_final)
VALUES (2,'descripcion',9.899111,-84.069268,1172,false,true);


INSERT INTO punto(id_direccion,descripcion,latitud,longitud,altitud,es_inicio,es_final)
VALUES (3,'descripcion',9.902706,-84.066522,1172,false,false);


INSERT INTO punto(id_direccion,descripcion,latitud,longitud,altitud,es_inicio,es_final)
VALUES (4,'descripcion',9.902641,-84.070214,1172,false,false);

INSERT INTO punto(id_direccion,descripcion,latitud,longitud,altitud,es_inicio,es_final)
VALUES (5,'descripcion',9.899111,-84.069268,1172,false,true);


INSERT INTO punto(id_direccion,descripcion,latitud,longitud,altitud,es_inicio,es_final)
VALUES (6,'descripcion',9.902706,-84.066522,1172,false,false);


INSERT INTO punto(id_direccion,descripcion,latitud,longitud,altitud,es_inicio,es_final)
VALUES (7,'descripcion',9.902641,-84.070214,1172,false,false);
--ALTER SEQUENCE public.entrega_bodega_id_entrega_seq RESTART WITH 1
INSERT INTO entrega_bodega(id_bodega,bulto,estatus,fecha)
VALUES (1,20,'ENTREGADO','01/01/2005');

INSERT INTO entrega_bodega(id_bodega,bulto,estatus,fecha)
VALUES (2,30,'ENTREGADO','01/01/2006');

INSERT INTO factura_x_entrega(id_entrega,id_factura)
VALUES (1,1);

INSERT INTO factura_x_entrega(id_entrega,id_factura)
VALUES (1,2);

INSERT INTO factura_x_entrega(id_entrega,id_factura)
VALUES (1,3);

INSERT INTO factura_x_entrega(id_entrega,id_factura)
VALUES (2,4);

INSERT INTO factura_x_entrega(id_entrega,id_factura)
VALUES (2,5);

INSERT INTO factura_x_entrega(id_entrega,id_factura)
VALUES (2,6);

--ALTER SEQUENCE public.factura_distribuidor_id_factura_seq RESTART WITH 1
--DELETE FROM factura_distribuidor WHERE id_factura>1 
--SELECT * FROM factura_distribuidor

INSERT INTO recoger(id_direccion,id_distribuidor,bulto,costo,fecha,estatus)
VALUES (3,1,12,10000,'01/01/2005','RECOGIDO');

--SELECT * FROM recoger
--DELETE FROM recoger WHERE id_recoger=3
--ALTER SEQUENCE public.recoger_id_recoger_seq RESTART WITH 1

INSERT INTO factura_x_recoger(id_recoger,id_factura)
VALUES (1,9);

INSERT INTO puntos_x_ruta(id_ruta,id_punto)
VALUES (1,1);

INSERT INTO puntos_x_ruta(id_ruta,id_punto)
VALUES (1,7);

INSERT INTO puntos_x_ruta(id_ruta,id_punto)
VALUES (1,6);

INSERT INTO puntos_x_ruta(id_ruta,id_punto)
VALUES (1,2);

INSERT INTO puntos_x_ruta(id_ruta,id_punto)
VALUES (2,1);

INSERT INTO puntos_x_ruta(id_ruta,id_punto)
VALUES (2,5);

INSERT INTO puntos_x_ruta(id_ruta,id_punto)
VALUES (2,4);

INSERT INTO puntos_x_ruta(id_ruta,id_punto)
VALUES (2,2);

INSERT INTO tipo_vehiculo (id_tipo_combustible,descripcion,eje,pasajeros,congelador)
VALUES (1,'camion',4,3,false);
--SELECT * FROM vehiculo
--DELETE FROM vehiculo WHERE id_vehiculo  >2
--ALTER SEQUENCE public.vehiculo_id_vehiculo_seq RESTART WITH 1
INSERT INTO vehiculo(id_tipo_vehiculo,matricula,estado,valor_fiscal,marca,modelo,marchamo,revision_tecnica,peso)
VALUES (1,12212,'estado',5000000,'nissan','Y5',true,true,8);

INSERT INTO vehiculo(id_tipo_vehiculo,matricula,estado,valor_fiscal,marca,modelo,marchamo,revision_tecnica,peso)
VALUES (1,122144,'bueno',4000000,'nissan','Y4',true,true,8);

INSERT INTO vehiculo(id_tipo_vehiculo,matricula,estado,valor_fiscal,marca,modelo,marchamo,revision_tecnica,peso)
VALUES (1,988988,'estado',9000000,'nissan','Y3',true,true,10);

INSERT INTO vehiculo(id_tipo_vehiculo,matricula,estado,valor_fiscal,marca,modelo,marchamo,revision_tecnica,peso)
VALUES (1,3234234,'estado',7000000,'nissan','Y2',true,true,7);

--SELECT * FROM mantenimiento
--DELETE FROM mantenimiento WHERE id_mantenimiento  >=2
--ALTER SEQUENCE public.mantenimiento_id_mantenimiento_seq RESTART WITH 1

INSERT INTO mantenimiento(id_taller,id_vehiculo,fecha,monto,nota_general)
VALUES (1,1,'01/05/2020',100000,'excelente');

INSERT INTO mantenimiento(id_taller,id_vehiculo,fecha,monto,nota_general)
VALUES (1,2,'03/05/2020',200000,'bueno');

INSERT INTO mantenimiento(id_taller,id_vehiculo,fecha,monto,nota_general)
VALUES (1,3,'07/05/2020',300000,'bien');


INSERT INTO detalle_mantenimiento(id_mantenimiento,id_tipo_mantenimiento,descripcion,monto,calificacion)
VALUES (1,1,'cambio motor',100000,'buena');

INSERT INTO detalle_mantenimiento(id_mantenimiento,id_tipo_mantenimiento,descripcion,monto,calificacion)
VALUES (2,2,'cambio transmicion',200000,'buena');

INSERT INTO detalle_mantenimiento(id_mantenimiento,id_tipo_mantenimiento,descripcion,monto,calificacion)
VALUES (3,3,'cambio frenos',300000,'buena');

INSERT INTO correo_cliente(id_cliente,descripcion)
VALUES (1,'correo');
INSERT INTO correo_bodega(id_bodega,descripcion)
VALUES (1,'correo');
INSERT INTO correo_empleado(id_empleado,descripcion)
VALUES (1,'correo');
INSERT INTO correo_taller(id_taller,descripcion)
VALUES (1,'correo');
INSERT INTO correo_distribuidor(id_distribuidor,descripcion)
VALUES (1,'correo');


--ALTER SEQUENCE envio_id_envio_seq RESTART WITH 1
--SELECT * FROM envio
--DELETE FROM envio WHERE id_envio >= 1

INSERT INTO envio(id_tipo_envio,fecha,id_ruta,id_vehiculo,id_empleado,id_bodega,estado,ganancia)
VALUES (1,'09/01/2021',1,1,2,1,'ENTREGADO',250000);

INSERT INTO envio(id_tipo_envio,fecha,id_ruta,id_vehiculo,id_empleado,id_bodega,estado,ganancia)
VALUES (1,'08/01/2021',1,1,2,1,'ENTREGADO',320000);


INSERT INTO envio(id_tipo_envio,fecha,id_ruta,id_vehiculo,id_empleado,id_bodega,estado,ganancia)
VALUES (1,'07/01/2021',1,1,2,1,'ENTREGADO',450000);

INSERT INTO envio(id_tipo_envio,fecha,id_ruta,id_vehiculo,id_empleado,id_bodega,estado,ganancia)
VALUES (1,'06/01/2021',1,1,2,1,'ENTREGADO',450000);

INSERT INTO envio(id_tipo_envio,fecha,id_ruta,id_vehiculo,id_empleado,id_bodega,estado,ganancia)
VALUES (1,'05/01/2021',1,1,2,1,'ENTREGADO',450000);

INSERT INTO envio(id_tipo_envio,fecha,id_ruta,id_vehiculo,id_empleado,id_bodega,estado,ganancia)
VALUES (1,'04/01/2021',1,1,2,1,'ENTREGADO',400000);

INSERT INTO envio(id_tipo_envio,fecha,id_ruta,id_vehiculo,id_empleado,id_bodega,estado,ganancia)
VALUES (1,'03/01/2021',1,1,2,1,'ENTREGADO',500000)

--ALTER SEQUENCE costo_id_costo_seq RESTART WITH 1
INSERT INTO costo(id_envio,monto)
VALUES (1,80000);

INSERT INTO costo(id_envio,monto)
VALUES (2,70000);

INSERT INTO costo(id_envio,monto)
VALUES (3,60000);

INSERT INTO costo(id_envio,monto)
VALUES (4,60000);

INSERT INTO costo(id_envio,monto)
VALUES (5,60000);

INSERT INTO costo(id_envio,monto)
VALUES (6,80000);

INSERT INTO costo(id_envio,monto)
VALUES (7,70000);

--ALTER SEQUENCE detalle_costo_id_costo_seq RESTART WITH 1
INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (1,'comida',15000,'01/01/1999',false);

INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (1,'gasolina',50000,'01/01/1999',false);

INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (1,'lancha',15000,'01/01/1999',false);

INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (2,'comida',10000,'07/01/2021',false);

INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (2,'gasolina',50000,'07/01/2021',false);

INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (2,'lancha',10000,'07/01/2021',false);

INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (3,'comida',10000,'07/01/2021',false);

INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (3,'gasolina',40000,'07/01/2021',false);

INSERT INTO detalle_costo(id_costo,descripcion,monto,fecha,pendiente)
VALUES (3,'lancha',10000,'07/01/2021',false);

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (1,1); 

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (1,2); 

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (1,3); 

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (2,4); 

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (2,5); 

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (2,6); 

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (3,7); 

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (3,8); 

INSERT INTO facturas_x_envio(id_envio,id_factura)
VALUES (3,9); 


INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (1,1);

INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (1,2);

INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (1,3);

INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (2,1);

INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (2,2);

INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (2,3);

INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (3,1);

INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (3,2);

INSERT INTO convenio_x_envio(id_envio,id_convenio)
VALUES (3,3);


INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (1,1);

INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (1,2);

INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (1,3);

INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (2,4);

INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (2,5);

INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (2,6);

INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (3,6);

INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (3,7);

INSERT INTO producto_x_envio(id_envio,id_producto)
VALUES (3,8);



