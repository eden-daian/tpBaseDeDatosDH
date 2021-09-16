CREATE TABLE tp_base_de_datos_dh.usuarios (
  id TINYINT NOT NULL AUTO_INCREMENT,
  usuarios VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));
  CREATE TABLE tp_base_de_datos_dh.notas (
  id TINYINT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  fecha_de_creacion date NOT NULL,
  fecha_de_la_ultima_modificacion date not null,
  descripcion text, 
  id_usuario TINYINT NOT NULL, 
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
  PRIMARY KEY (id));
  CREATE TABLE tp_base_de_datos_dh.categorias (
  id TINYINT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR (50) NOT NULL,
  PRIMARY KEY (id));
  CREATE TABLE tp_base_de_datos_dh.categorias_notas (
  id TINYINT NOT NULL AUTO_INCREMENT,
  categorias_id TINYINT NOT NULL,
  notas_id TINYINT NOT NULL,
  FOREIGN KEY (categorias_id) references categorias (id),
  FOREIGN KEY (notas_id) references notas (id),
  PRIMARY KEY (id));
  
  
  