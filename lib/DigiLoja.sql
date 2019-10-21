CREATE TABLE administrador
(
  	nome varchar(250) NOT NULL,
  	login varchar(250) NOT NULL,
	senha varchar(250) NOT NULL,
  	email varchar(250) NOT NULL,
 	id serial NOT NULL
);

ALTER TABLE administrador ADD CONSTRAINT pk_administrador
  	PRIMARY KEY (id);

CREATE TABLE categoria
(
  	descricao varchar(250) NOT NULL,
	id serial NOT NULL
);

ALTER TABLE categoria ADD CONSTRAINT pk_categoria
  	PRIMARY KEY (id);

CREATE TABLE categoria_produto
(
  	id_categoria integer NOT NULL,
  	id_produto integer NOT NULL
);

ALTER TABLE categoria_produto ADD CONSTRAINT pk_categoria_produto
  	PRIMARY KEY (id_categoria, id_produto);

CREATE TABLE cliente
(
  	nome varchar(250) NOT NULL,
  	login varchar(250) NOT NULL,
  	senha varchar(250) NOT NULL,
  	email varchar(250) NOT NULL,
  	endereco varchar(250) NOT NULL,
	id serial NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT pk_cliente
  	PRIMARY KEY (id);

CREATE TABLE compra
(
  	data timestamp NOT NULL,
  	id_cliente integer NOT NULL,
	id serial NOT NULL
);

ALTER TABLE compra ADD CONSTRAINT pk_compra
	PRIMARY KEY (id);

CREATE TABLE compra_produto
(	
	id_compra integer NOT NULL,
	id_produto integer NOT NULL
);

ALTER TABLE compra_produto ADD CONSTRAINT pk_compra_produto
  	PRIMARY KEY (id_compra, id_produto);

CREATE TABLE produto
(
	nome varchar(250) NOT NULL,
  	descricao varchar(250) NOT NULL,
  	foto varchar(250) NOT NULL,
  	quantidade integer NOT NULL,
  	preco double precision,
	id serial NOT NULL
);

ALTER TABLE produto ADD CONSTRAINT pk_produto
  PRIMARY KEY (id);

ALTER TABLE categoria_produto ADD CONSTRAINT fk_categoria_id
  FOREIGN KEY (id_categoria) REFERENCES categoria (id);

ALTER TABLE categoria_produto ADD CONSTRAINT fk_produto_id
  FOREIGN KEY (id_produto) REFERENCES produto (id);

ALTER TABLE compra ADD CONSTRAINT fk_compra_
  FOREIGN KEY (id_cliente) REFERENCES cliente (id);

ALTER TABLE compra_produto ADD CONSTRAINT fk_compra_id
  FOREIGN KEY (id_compra) REFERENCES compra (id);

ALTER TABLE compra_produto ADD CONSTRAINT fk_produto_id_
  FOREIGN KEY (id_produto) REFERENCES produto (id);
