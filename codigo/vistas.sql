--						VISTAS SEGUNDO PROYECTO 
--
--
--  Lista de facturas por distribuidor a un cliente entre dos fechas 
SELECT d.razon_comercial,
	   f.factura_electronica,
	   f.fecha,
	   f.monto,
	   f.bulto,
	   c.nombre AS Cliente 
FROM   factura_distribuidor AS f
	   JOIN distribuidor AS d
	   ON d.id_distribuidor = f.id_distribuidor
	   JOIN cliente AS c
	   ON f.id_cliente = c.id_cliente
WHERE d.razon_comercial = 'RC_DISTRIBUIDOR2' 
	AND c.nombre = 'CLIENTE2' 
	AND f.fecha BETWEEN '2000-01-01' AND '2020-01-01'
ORDER BY f.fecha DESC;

--informe de mantenimiendo de vehiculo por vehiculo entre dos fechas 

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
WHERE m.fecha BETWEEN '2020-01-05' AND '2020-07-05' 

--  Mostrar los bultos por distribuidor, cantidad de facturas, monto total de 
--facturas y ganancia por cliente 


SELECT c.nombre,
	   d.razon_comercial,
	   SUM(fd.bulto) AS bultos,
	   Count(fd.factura_electronica) AS facturas,
	   SUM(fd.monto) AS total_monto_facturas,
	   SUM(fd.monto*0.05) AS ganancia
FROM factura_distribuidor as fd
	JOIN distribuidor as d
	ON fd.id_distribuidor = d.id_distribuidor
	JOIN cliente as c
	ON c.id_cliente = fd.id_cliente
GROUP BY (d.razon_comercial,c.nombre)
ORDER BY (c.nombre, d.razon_comercial) DESC;


--  Cuanto se ha gastado en envios vs ganado en envios en total filtrado por bodega
-- y tipo de viaje 

SELECT SUM(e.ganancia) AS Ingresos_de_envios,
	   SUM(c.monto) AS Gastos_de_envios,
	   SUM(e.ganancia)-SUM(c.monto) AS Ganancia_total,
	   b.id_bodega,
	   COUNT(e.id_envio),
	   te.descripcion
FROM envio AS e
	JOIN costo AS c
	ON c.id_envio = e.id_envio
	JOIN bodega AS b
	ON b.id_bodega = e.id_bodega
	JOIN tipo_envio as te
	ON te.id_tipo_envio = e.id_tipo_envio
WHERE e.id_bodega = 1
GROUP BY b.id_bodega , te.descripcion


--  Cuanto se ha gastado en envios vs ganado en envios en total filtrado por ruta 
-- y tipo de viaje 

SELECT SUM(e.ganancia) AS Ingresos_de_envios,
	   SUM(c.monto) AS Gastos_de_envios,
	   SUM(e.ganancia)-SUM(c.monto) AS Ganancia_total,
	   COUNT(e.id_envio),
	   te.descripcion,
	   r.descripcion
FROM envio AS e
	JOIN costo AS c
	ON c.id_envio = e.id_envio
	JOIN tipo_envio as te
	ON te.id_tipo_envio = e.id_tipo_envio
	JOIN ruta as r
	ON r.id_ruta = e.id_ruta
GROUP BY te.descripcion, r.descripcion