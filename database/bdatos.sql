CREATE DATABASE IF NOT EXISTS tienda2;

USE tienda2;

CREATE TABLE IF NOT EXISTS t_usuarios(
    id_usuario  int(11)         auto_increment NOT NULL,
    nombre      varchar(100)                   NOT NULL,
    apellido    varchar(100)                   NOT NULL,
    email       varchar(200)                   NOT NULL,
    password    varchar(200)                   NOT NULL,
    rol         varchar(20)                    NOT NULL,
    imagen      varchar(200),
    CONSTRAINT  pk_usuario      PRIMARY KEY(id_usuario),
    CONSTRAINT  uq_email        UNIQUE(email)
)ENGINE=InnoDb;

INSERT INTO t_usuarios VALUE(NULL, 'leonardo','garavito','leonardo123garavito@gmail.com','123456789','admin','imagen');

CREATE TABLE IF NOT EXISTS t_categoria(
    id_categoria  int(11)         auto_increment NOT NULL,
    nombre_categoria      varchar(100)                   NOT NULL,
    CONSTRAINT  pk_categoria      PRIMARY KEY(id_categoria)

)ENGINE=InnoDb;

INSERT INTO t_categoria VALUE(NULL, 'contruncion'),(NULL, 'electricos'),(NULL, 'pisos'),(NULL, 'pinturas');

CREATE TABLE IF NOT EXISTS t_productos(
    id_producto     int(11)         auto_increment NOT NULL,
    nombre_producto varchar(100)                   NOT NULL,
    descripcion     varchar(200)                   NOT NULL,
    precio          float(10,9)                    NOT NULL,
    stock           int(100)                       NOT NULL,
    oferta          varchar(200)                   NOT NULL,
    fecha           date                           NOT NULL,
    imagen          varchar(255),
    id_categoria    int(11)                        NOT NULL,
    CONSTRAINT  pk_producto      PRIMARY KEY(id_producto),
    CONSTRAINT  fk_categoria     FOREIGN KEY(id_producto) REFERENCES t_categoria(id_categoria)
)ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS t_pedidos(
    id_pedido       int(11)         auto_increment NOT NULL,
    id_usuario      int(11)                        NOT NULL,
    fecha           date                           NOT NULL,
    hora            time                           NOT NULL,
    ciudad          varchar(100)                   NOT NULL,
    direccion       varchar(200)                   NOT NULL,
    costo           float(10,2)                    NOT NULL,
    estado          varchar(20)                    NOT NULL,
    CONSTRAINT  pk_pedidos            PRIMARY KEY(id_pedido),
    CONSTRAINT  fk_pedido_usuario     FOREIGN KEY(id_usuario) REFERENCES t_usuarios(id_usuario)
)ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS t_detallepedidos(
    id_detallepedido      int(11)         auto_increment NOT NULL,
    id_pedido             int(11)                        NOT NULL,
    id_producto           int(11)                        NOT NULL,
    unidades              int(100)                       NOT NULL,
    CONSTRAINT  pk_detallepedido            PRIMARY KEY(id_detallepedido),
    CONSTRAINT  fk_detalle_pedido           FOREIGN KEY(id_pedido) REFERENCES t_pedidos(id_pedido),
    CONSTRAINT  fk_detalle_producto         FOREIGN KEY(id_producto) REFERENCES t_productos(id_producto)
)ENGINE=InnoDb;