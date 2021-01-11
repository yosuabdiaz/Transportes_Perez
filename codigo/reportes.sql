--  Lista de facturas por distribuidor a un cliente 

SELECT d.razon_comercial,
	   f.factura_electronica,
	   f.fecha,
	   c.nombre AS Cliente
FROM   factura_distribuidor AS f
	   JOIN distribuidor AS d
	   ON d.id_distribuidor = f.id_distribuidor
	   JOIN cliente AS c
	   ON f.id_cliente = c.id_cliente
WHERE d.razon_comercial = 'RC_distribuidor2' AND c.nombre = 'cliente2'
ORDER BY f.fecha DESC;

--INSERT INTO factura_distribuidor(id_distribuidor,id_cliente,factura_electronica,monto,fecha,bulto,ganancia)
--VALUES (2,2,9888776,1000000,'29/10/2020',23,50000);

--  Cuanto se gasta vs cuanto se gana por viaje entre dos fechas 

SELECT e.id_envio,
 	   e.fecha as fecha_de_envio,
	   e.ganancia as pago_por_envio,
	   c.monto as gastos_por_envio,
	   e.ganancia-c.monto AS Ganancia_por_envio
FROM envio AS e
	JOIN costo AS c
	ON c.id_envio = e.id_envio	
WHERE e.fecha BETWEEN  '01/01/1999' AND '03/11/2020'
ORDER BY e.ganancia-c.monto DESC;

--  Cuanto se ha gastado en envios vs ganado en envios en total 

SELECT SUM(e.ganancia) AS Ingresos_de_envios,
	   SUM(c.monto) AS Gastos_de_envios,
	   SUM(e.ganancia)-SUM(c.monto) AS Ganancia_total
FROM envio AS e
	JOIN costo AS c
	ON c.id_envio = e.id_envio;	

--  Mostrar los bultos por distribuidor, cantidad de facturas, monto total de facturas y ganancia

SELECT d.razon_comercial,
	   SUM(fd.bulto) AS bultos,
	   Count(fd.factura_electronica) AS facturas,
	   SUM(fd.monto) AS total_monto_facturas,
	   SUM(fd.monto*0.05) AS ganancia
FROM factura_distribuidor as fd
	JOIN distribuidor as d
	ON fd.id_distribuidor = d.id_distribuidor
GROUP BY (d.razon_comercial)
ORDER BY SUM(fd.bulto) DESC;

--informe de mantenimiendo de vehiculo

SELECT tm.descripcion,
	   dm.monto,
	   m.fecha,
	   v.marca,
	   v.modelo,
	   tv.descripcion
FROM mantenimiento as m 
	JOIN detalle_mantenimiento as dm
	ON m.id_mantenimiento = dm.id_mantenimiento
	JOIN tipo_mantenimiento as tm
	ON dm.id_tipo_mantenimiento = tm.id_tipo_mantenimiento
	JOIN vehiculo as v
	ON v.id_vehiculo = m.id_vehiculo
	JOIN tipo_vehiculo as tv 
	ON v.id_tipo_vehiculo = tv.id_tipo_vehiculo