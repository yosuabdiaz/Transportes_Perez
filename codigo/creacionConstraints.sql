--Primary Keys

ALTER TABLE cliente
	ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);
	
ALTER TABLE distribuidor
	ADD CONSTRAINT pk_distribuidor PRIMARY KEY (id_distribuidor);

ALTER TABLE costo
	ADD CONSTRAINT pk_costo PRIMARY KEY (id_costo);

ALTER TABLE detalle_costo
	ADD CONSTRAINT pk_detalle_costo PRIMARY KEY (id_detalle_costo);
	
ALTER TABLE empleado_x_departamento
	ADD CONSTRAINT pk_empleado_x_departamento PRIMARY KEY (id_linea);
	
ALTER TABLE departamento
	ADD CONSTRAINT pk_departamento PRIMARY KEY (id_departamento);
	
ALTER TABLE departamento_x_bodega
	ADD CONSTRAINT pk_departamento_x_bodega PRIMARY KEY (id_linea);
	
ALTER TABLE salario
	ADD CONSTRAINT pk_salario PRIMARY KEY (id_salario);

ALTER TABLE empleado
	ADD CONSTRAINT pk_empleado PRIMARY KEY (id_empleado);

ALTER TABLE tipo_empleado
	ADD CONSTRAINT pk_tipo_empleado PRIMARY KEY (id_tipo_empleado);

ALTER TABLE bodega
	ADD CONSTRAINT pk_bodega PRIMARY KEY (id_bodega);
	
ALTER TABLE telefono_bodega
	ADD CONSTRAINT pk_telefono_bodega PRIMARY KEY (id_telefono);

ALTER TABLE telefono_empleado
	ADD CONSTRAINT pk_telefono_empleado PRIMARY KEY (id_telefono);
	
ALTER TABLE telefono_cliente
	ADD CONSTRAINT pk_telefono_cliente PRIMARY KEY (id_telefono);
	
ALTER TABLE telefono_distribuidor
	ADD CONSTRAINT pk_telefono_distribuidor PRIMARY KEY (id_telefono);
	
ALTER TABLE telefono_taller
	ADD CONSTRAINT pk_telefono_taller PRIMARY KEY (id_telefono);
	
ALTER TABLE envio
	ADD CONSTRAINT pk_envio PRIMARY KEY (id_envio);
	
ALTER TABLE tipo_envio
	ADD CONSTRAINT pk_tipo_envio PRIMARY KEY (id_tipo_envio);
	
ALTER TABLE convenio
	ADD CONSTRAINT pk_convenio PRIMARY KEY (id_convenio);
	
ALTER TABLE facturas_x_envio
	ADD CONSTRAINT pk_facturas_x_envio PRIMARY KEY (id_linea);

ALTER TABLE convenio_x_envio
	ADD CONSTRAINT pk_convenio_x_envio PRIMARY KEY (id_linea);
	
ALTER TABLE producto_x_envio
	ADD CONSTRAINT pk_producto_x_envio PRIMARY KEY (id_linea);
	
ALTER TABLE factura_distribuidor
	ADD CONSTRAINT pk_factura_distribuidor PRIMARY KEY (id_factura);
	
ALTER TABLE producto
	ADD CONSTRAINT pk_producto PRIMARY KEY (id_producto);
	
ALTER TABLE entrega_bodega
	ADD CONSTRAINT pk_entrega_bodega PRIMARY KEY (id_entrega);	

ALTER TABLE factura_x_entrega
	ADD CONSTRAINT pk_factura_x_entrega PRIMARY KEY (id_linea);

ALTER TABLE recoger
	ADD CONSTRAINT pk_recoger PRIMARY KEY (id_recoger);

ALTER TABLE factura_x_recoger
	ADD CONSTRAINT pk_factura_x_recoger PRIMARY KEY (id_linea);
	
ALTER TABLE direccion
	ADD CONSTRAINT pk_direccion PRIMARY KEY (id_direccion);

ALTER TABLE provincia
	ADD CONSTRAINT pk_provincia PRIMARY KEY (id_provincia);

ALTER TABLE distrito
	ADD CONSTRAINT pk_distrito PRIMARY KEY (id_distrito);
	
ALTER TABLE canton
	ADD CONSTRAINT pk_canton PRIMARY KEY (id_canton);
	
ALTER TABLE codigo_postal
	ADD CONSTRAINT pk_codigo_postal PRIMARY KEY (id_codigo);
	
ALTER TABLE ruta
	ADD CONSTRAINT pk_ruta PRIMARY KEY (id_ruta);
	
ALTER TABLE punto
	ADD CONSTRAINT pk_punto PRIMARY KEY (id_punto);
	
ALTER TABLE puntos_x_ruta
	ADD CONSTRAINT pk_puntos_x_ruta PRIMARY KEY (id_linea);
	
ALTER TABLE tipo_combustible
	ADD CONSTRAINT pk_tipo_combustible PRIMARY KEY (id_tipo_combustible);
	
ALTER TABLE vehiculo
	ADD CONSTRAINT pk_vehiculo PRIMARY KEY (id_vehiculo);
	
ALTER TABLE tipo_vehiculo
	ADD CONSTRAINT pk_tipo_vehiculo PRIMARY KEY (id_tipo_vehiculo);
	
ALTER TABLE taller
	ADD CONSTRAINT pk_taller PRIMARY KEY (id_taller);
	
ALTER TABLE mantenimiento
	ADD CONSTRAINT pk_mantenimiento PRIMARY KEY (id_mantenimiento);
	
ALTER TABLE tipo_mantenimiento
	ADD CONSTRAINT pk_tipo_mantenimiento PRIMARY KEY (id_tipo_mantenimiento);
	
ALTER TABLE detalle_mantenimiento
	ADD CONSTRAINT pk_detalle_mantenimiento PRIMARY KEY (id_detalle_mantenimiento);
	
ALTER TABLE correo_cliente
	ADD CONSTRAINT pk_correo_cliente PRIMARY KEY (id_correo);
	
ALTER TABLE correo_distribuidor
	ADD CONSTRAINT pk_correo_distribuidor PRIMARY KEY (id_correo);
	
ALTER TABLE correo_empleado
	ADD CONSTRAINT pk_correo_empleado PRIMARY KEY (id_correo);
	
ALTER TABLE correo_bodega
	ADD CONSTRAINT pk_correo_bodega PRIMARY KEY (id_correo);
	
ALTER TABLE correo_taller
	ADD CONSTRAINT pk_correo_taller PRIMARY KEY (id_correo);
	


-- Foreign Keys

ALTER TABLE cliente
	ADD CONSTRAINT fk_cliente_direccion  FOREIGN KEY (id_direccion)
	REFERENCES direccion (id_direccion);

ALTER TABLE distribuidor
	ADD CONSTRAINT fk_distribuidor_direccion  FOREIGN KEY (id_direccion)
	REFERENCES direccion (id_direccion);

ALTER TABLE costo
	ADD CONSTRAINT fk_costo_envio  FOREIGN KEY (id_envio)
	REFERENCES envio (id_envio);
	
ALTER TABLE detalle_costo
	ADD CONSTRAINT fk_detalle_costo_costo  FOREIGN KEY (id_costo)
	REFERENCES costo (id_costo);
	
ALTER TABLE empleado_x_departamento
	ADD CONSTRAINT fk_empleado_x_departamento_departamento  FOREIGN KEY (id_departamento)
	REFERENCES departamento (id_departamento);
	
ALTER TABLE empleado_x_departamento
	ADD CONSTRAINT fk_empleado_x_departamento_empleado  FOREIGN KEY (id_empleado)
	REFERENCES empleado (id_empleado);
	
ALTER TABLE departamento_x_bodega
	ADD CONSTRAINT fk_departamento_x_bodega_bodega  FOREIGN KEY (id_bodega)
	REFERENCES bodega (id_bodega);
	
ALTER TABLE departamento_x_bodega
	ADD CONSTRAINT fk_departamento_x_bodega_departamento  FOREIGN KEY (id_departamento)
	REFERENCES departamento (id_departamento);
	
ALTER TABLE salario
	ADD CONSTRAINT fk_salario_empleado  FOREIGN KEY (id_empleado)
	REFERENCES empleado (id_empleado);
	
ALTER TABLE empleado
	ADD CONSTRAINT fk_empleado_tipo_empleado  FOREIGN KEY (id_tipo_empleado)
	REFERENCES tipo_empleado (id_tipo_empleado);
	
ALTER TABLE bodega
	ADD CONSTRAINT fk_bodega_direccion  FOREIGN KEY (id_direccion)
	REFERENCES direccion (id_direccion);
	
ALTER TABLE telefono_bodega
	ADD CONSTRAINT fk_telefono_bodega_bodega  FOREIGN KEY (id_bodega)
	REFERENCES bodega (id_bodega);
	
ALTER TABLE telefono_empleado
	ADD CONSTRAINT fk_telefono_empleado_empleado  FOREIGN KEY (id_empleado)
	REFERENCES empleado (id_empleado);
	
ALTER TABLE telefono_cliente
	ADD CONSTRAINT fk_telefono_cliente_cliente  FOREIGN KEY (id_cliente)
	REFERENCES cliente (id_cliente);
	
ALTER TABLE telefono_distribuidor
	ADD CONSTRAINT fk_telefono_distribuidor_distribuidor  FOREIGN KEY (id_distribuidor)
	REFERENCES distribuidor (id_distribuidor);
	
ALTER TABLE telefono_taller
	ADD CONSTRAINT fk_telefono_taller_taller  FOREIGN KEY (id_taller)
	REFERENCES taller (id_taller);
	
ALTER TABLE envio
	ADD CONSTRAINT fk_envio_tipo_envio  FOREIGN KEY (id_tipo_envio)
	REFERENCES tipo_envio (id_tipo_envio);
	
ALTER TABLE envio
	ADD CONSTRAINT fk_envio_ruta  FOREIGN KEY (id_ruta)
	REFERENCES ruta (id_ruta);
	
ALTER TABLE envio
	ADD CONSTRAINT fk_envio_vehiculo  FOREIGN KEY (id_vehiculo)
	REFERENCES vehiculo (id_vehiculo);
	
ALTER TABLE envio
	ADD CONSTRAINT fk_envio_empleado  FOREIGN KEY (id_empleado)
	REFERENCES empleado (id_empleado);
	
ALTER TABLE envio
	ADD CONSTRAINT fk_envio_bodega  FOREIGN KEY (id_bodega)
	REFERENCES bodega (id_bodega);
	
/*ALTER TABLE envio
	ADD CONSTRAINT fk_envio_costo  FOREIGN KEY (id_costo)
	REFERENCES costo (id_costo);
*/	
ALTER TABLE convenio
	ADD CONSTRAINT fk_convenio_cliente  FOREIGN KEY (id_cliente)
	REFERENCES cliente (id_cliente);
	
ALTER TABLE facturas_x_envio
	ADD CONSTRAINT fk_facturas_x_envio_envio  FOREIGN KEY (id_envio)
	REFERENCES envio (id_envio);
	
ALTER TABLE facturas_x_envio
	ADD CONSTRAINT fk_facturas_x_envio_factura_distribuidor  FOREIGN KEY (id_factura)
	REFERENCES factura_distribuidor (id_factura);
	
ALTER TABLE convenio_x_envio
	ADD CONSTRAINT fk_convenio_x_envio_envio  FOREIGN KEY (id_envio)
	REFERENCES envio (id_envio);
	
ALTER TABLE convenio_x_envio
	ADD CONSTRAINT fk_convenio_x_envio_convenio  FOREIGN KEY (id_convenio)
	REFERENCES convenio (id_convenio);
	
ALTER TABLE producto_x_envio
	ADD CONSTRAINT fk_producto_x_envio_envio  FOREIGN KEY (id_envio)
	REFERENCES envio (id_envio);
	
ALTER TABLE producto_x_envio
	ADD CONSTRAINT fk_producto_x_envio_producto  FOREIGN KEY (id_producto)
	REFERENCES producto (id_producto);
	
ALTER TABLE factura_distribuidor
	ADD CONSTRAINT fk_factura_distribuidor_distribuidor  FOREIGN KEY (id_distribuidor)
	REFERENCES distribuidor (id_distribuidor);
	
ALTER TABLE factura_distribuidor
	ADD CONSTRAINT fk_factura_distribuidor_cliente  FOREIGN KEY (id_cliente)
	REFERENCES cliente (id_cliente);
	
ALTER TABLE entrega_bodega
	ADD CONSTRAINT fk_entrega_bodega_bodega  FOREIGN KEY (id_bodega)
	REFERENCES bodega (id_bodega);
	
ALTER TABLE factura_x_entrega
	ADD CONSTRAINT fk_factura_x_entrega_entrega_bodega  FOREIGN KEY (id_entrega)
	REFERENCES entrega_bodega (id_entrega);
	
ALTER TABLE factura_x_entrega
	ADD CONSTRAINT fk_factura_x_entrega_factura_distribuidor  FOREIGN KEY (id_factura)
	REFERENCES factura_distribuidor (id_factura);
	
ALTER TABLE recoger
	ADD CONSTRAINT fk_recoger_distribuidor  FOREIGN KEY (id_distribuidor)
	REFERENCES distribuidor (id_distribuidor);
	
ALTER TABLE recoger
	ADD CONSTRAINT fk_recoger_direccion  FOREIGN KEY (id_direccion)
	REFERENCES direccion (id_direccion);
	
ALTER TABLE factura_x_recoger
	ADD CONSTRAINT fk_factura_x_recoger_recoger  FOREIGN KEY (id_recoger)
	REFERENCES recoger (id_recoger);
	
ALTER TABLE factura_x_recoger
	ADD CONSTRAINT fk_factura_x_recoger_factura_distribuidor  FOREIGN KEY (id_factura)
	REFERENCES factura_distribuidor (id_factura);
	
ALTER TABLE direccion
	ADD CONSTRAINT fk_direccion_codigo_postal  FOREIGN KEY (id_codigo)
	REFERENCES codigo_postal (id_codigo);
	
ALTER TABLE codigo_postal
	ADD CONSTRAINT fk_codigo_postal_provincia  FOREIGN KEY (id_provincia)
	REFERENCES provincia (id_provincia);
	
ALTER TABLE codigo_postal
	ADD CONSTRAINT fk_codigo_postal_canton  FOREIGN KEY (id_canton)
	REFERENCES canton (id_canton);
	
ALTER TABLE codigo_postal
	ADD CONSTRAINT fk_codigo_postal_distrito  FOREIGN KEY (id_distrito)
	REFERENCES distrito (id_distrito);
	
ALTER TABLE punto
	ADD CONSTRAINT fk_punto_direccion  FOREIGN KEY (id_direccion)
	REFERENCES direccion (id_direccion);
	
ALTER TABLE puntos_x_ruta
	ADD CONSTRAINT fk_puntos_x_ruta_ruta  FOREIGN KEY (id_ruta)
	REFERENCES ruta (id_ruta);
	
ALTER TABLE puntos_x_ruta
	ADD CONSTRAINT fk_puntos_x_ruta_punto  FOREIGN KEY (id_punto)
	REFERENCES punto (id_punto);
	
ALTER TABLE vehiculo
	ADD CONSTRAINT fk_vehiculo_tipo_vehiculo  FOREIGN KEY (id_tipo_vehiculo)
	REFERENCES tipo_vehiculo (id_tipo_vehiculo);
	
ALTER TABLE tipo_vehiculo
	ADD CONSTRAINT fk_tipo_vehiculo_tipo_combustible  FOREIGN KEY (id_tipo_combustible)
	REFERENCES tipo_combustible (id_tipo_combustible);
	
ALTER TABLE taller
	ADD CONSTRAINT fk_taller_direccion  FOREIGN KEY (id_direccion)
	REFERENCES direccion (id_direccion);
	
ALTER TABLE mantenimiento
	ADD CONSTRAINT fk_mantenimiento_taller  FOREIGN KEY (id_taller)
	REFERENCES taller (id_taller);
	
ALTER TABLE mantenimiento
	ADD CONSTRAINT fk_mantenimiento_vehiculo  FOREIGN KEY (id_vehiculo)
	REFERENCES vehiculo (id_vehiculo);
	
ALTER TABLE detalle_mantenimiento
	ADD CONSTRAINT fk_detalle_mantenimiento_mantenimiento  FOREIGN KEY (id_mantenimiento)
	REFERENCES mantenimiento (id_mantenimiento);
	
ALTER TABLE detalle_mantenimiento
	ADD CONSTRAINT fk_detalle_mantenimiento_tipo_mantenimiento  FOREIGN KEY (id_tipo_mantenimiento)
	REFERENCES tipo_mantenimiento (id_tipo_mantenimiento);

ALTER TABLE correo_cliente
	ADD CONSTRAINT fk_correo_cliente_cliente  FOREIGN KEY (id_cliente)
	REFERENCES cliente (id_cliente);
	
ALTER TABLE correo_distribuidor
	ADD CONSTRAINT fk_correo_distribuidor_distribuidor  FOREIGN KEY (id_distribuidor)
	REFERENCES distribuidor (id_distribuidor);

ALTER TABLE correo_empleado
	ADD CONSTRAINT fk_correo_empleado_empleado  FOREIGN KEY (id_empleado)
	REFERENCES empleado (id_empleado);

ALTER TABLE correo_bodega
	ADD CONSTRAINT fk_correo_bodega_bodega  FOREIGN KEY (id_bodega)
	REFERENCES bodega (id_bodega);

ALTER TABLE correo_taller
	ADD CONSTRAINT fk_correo_taller_taller  FOREIGN KEY (id_taller)
	REFERENCES taller (id_taller);


--Unique
ALTER TABLE cliente
	ADD CONSTRAINT uk_cedula UNIQUE (cedula);

ALTER TABLE distribuidor
	ADD CONSTRAINT uk_razon_comercial_distribuidor UNIQUE (razon_comercial);

ALTER TABLE distribuidor
	ADD CONSTRAINT uk_cedula_juridica_distribuidor UNIQUE (cedula_juridica);

ALTER TABLE telefono_bodega
	ADD CONSTRAINT uk_numero_bodega UNIQUE (numero);

ALTER TABLE telefono_empleado
	ADD CONSTRAINT uk_numero_empleado UNIQUE (numero);

ALTER TABLE telefono_cliente
	ADD CONSTRAINT uk_numero_cliente UNIQUE (numero);

ALTER TABLE telefono_distribuidor
	ADD CONSTRAINT uk_numero_distribuidor UNIQUE (numero);

ALTER TABLE telefono_taller
	ADD CONSTRAINT uk_numero_taller UNIQUE (numero);

ALTER TABLE vehiculo
	ADD CONSTRAINT uk_matricula UNIQUE (matricula);

ALTER TABLE taller
	ADD CONSTRAINT uk_razon_comercial_taller UNIQUE (razon_comercial);

ALTER TABLE taller
	ADD CONSTRAINT uk_cedula_juridica_taller UNIQUE (cedula_juridica);

ALTER TABLE correo_cliente
	ADD CONSTRAINT uk_descripcion_cliente UNIQUE (descripcion);


ALTER TABLE correo_distribuidor
	ADD CONSTRAINT uk_descripcion_distribuidor UNIQUE (descripcion);


ALTER TABLE correo_empleado
	ADD CONSTRAINT uk_descripcion_empleado UNIQUE (descripcion);


ALTER TABLE correo_bodega
	ADD CONSTRAINT uk_descripcion_bodega UNIQUE (descripcion);


ALTER TABLE correo_taller
	ADD CONSTRAINT uk_descripcion_taller UNIQUE (descripcion);


--CHECK
ALTER TABLE envio
	ADD CONSTRAINT ch_estado_envio CHECK (estado IN ('PENDIENTE', 'CAMINO', 'ENTREGADO'));

ALTER TABLE recoger
	ADD CONSTRAINT ch_estatus_recoger CHECK (estatus IN ('PENDIENTE', 'CAMINO', 'RECOGIDO'));

ALTER TABLE entrega_bodega
	ADD CONSTRAINT ch_estatus_bodega CHECK (estatus IN ('PENDIENTE', 'CAMINO', 'ENTREGADO'));