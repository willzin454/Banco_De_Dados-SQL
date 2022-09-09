DROP DATABASE IF EXISTS banco_dados;

CREATE DATABASE banco_dados;

USE banco_dados;

CREATE TABLE estado(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(200)
,sigla CHAR(4)
,CONSTRAINT pk_estado PRIMARY KEY (id)
);

INSERT INTO estado(nome,sigla) VALUES ('Paraná','PR');
INSERT INTO estado(nome,sigla) VALUES ('São Paulo','SP');
INSERT INTO estado(nome,sigla) VALUES ('Mato Grosso','MG');
SELECT * FROM estado;

DROP TABLE IF EXISTS  cidade;

CREATE TABLE cidade(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(255) NOT NULL UNIQUE
,estado_id INT NOT NULL 
,CONSTRAINT pk_cidade PRIMARY KEY (id)
,CONSTRAINT fk_estado_cidade FOREIGN KEY (estado_id) REFERENCES estado (id)
,CONSTRAINT estado_cidade UNIQUE (nome,estado_id)
);

INSERT INTO cidade(nome,estado_id) VALUES ('Paranavaí','1');
INSERT INTO cidade(nome,estado_id) VALUES ('Guarulios','2');
INSERT INTO cidade(nome,estado_id) VALUES ('Jundiai','3');
SELECT * FROM cidade;

DROP TABLE IF EXISTS  estacionamento;

CREATE TABLE estacionamento(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR (255) NOT NULL
,cnpj VARCHAR(255) NOT NULL UNIQUE
,quantidade_de_vagas VARCHAR(255) NOT NULL
,ativo CHAR (1) NOT NULL DEFAULT 'S'
,quantidade_de_funcionarios VARCHAR(255) NOT NULL
,cidade_id INT NOT NULL
,CONSTRAINT pk_estacionamneto PRIMARY KEY (id)
,CONSTRAINT fk_cidade_estacionamento FOREIGN KEY (cidade_id) REFERENCES cidade (id)
,CONSTRAINT cidade_estacionamento UNIQUE (nome, cidade_id) 
);

INSERT INTO estacionamento(nome,cnpj,quantidade_de_vagas,quantidade_de_funcionarios,cidade_id) VALUES ('Pati','1541511541','20','2','1');
INSERT INTO estacionamento(nome,cnpj,quantidade_de_vagas,quantidade_de_funcionarios,cidade_id) VALUES ('Araru','1541511542','10','4','2');
INSERT INTO estacionamento(nome,cnpj,quantidade_de_vagas,quantidade_de_funcionarios,cidade_id) VALUES ('Polis','1541571542','60','10','3');
SELECT * FROM estacionamento;

ALTER TABLE estacionamento MODIFY COLUMN ativo ENUM ('S','N') NOT NULL;

DROP TABLE IF EXISTS funcionario;

CREATE TABLE funcionario(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR (200) NOT NULL
,numero VARCHAR (200) NOT NULL
,cpf CHAR(11) NOT NULL UNIQUE
,estacionamento_id INT NOT NULL
,CONSTRAINT pk_funcionario PRIMARY KEY (id)
,CONSTRAINT fk_funcionario_estacinamento FOREIGN KEY (estacionamento_id) REFERENCES estacionamento (id)
,CONSTRAINT estacionamento_funcionario UNIQUE (cpf,estacionamento_id)
);

INSERT INTO funcionario(nome,numero,cpf,estacionamento_id) VALUES ('Ronaldo','965854578','14569254742','1');
INSERT INTO funcionario(nome,numero,cpf,estacionamento_id) VALUES ('Rodolfo','965854558','14569274742','2');
INSERT INTO funcionario(nome,numero,cpf,estacionamento_id) VALUES ('Rogerio','965854588','14569274342','3');
SELECT * FROM funcionario;

CREATE TABLE cliente(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(200) NOT NULL
,cpf CHAR(11) NOT NULL UNIQUE
,email VARCHAR(200) NOT NULL
,CONSTRAINT pk_cliente PRIMARY KEY (id) 
);

INSERT INTO cliente(nome,cpf,email) VALUES ('william','07601046974','williamcarvalho493@gmail.com');
INSERT INTO cliente(nome,cpf,email) VALUES ('gabriel','07601046975','williamcarvalho43@gmail.com');
INSERT INTO cliente(nome,cpf,email) VALUES ('Abreu','07601046175','williamcarvalho3@gmail.com');
SELECT * FROM cliente;

DROP TABLE IF EXISTS marca;

CREATE TABLE marca(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(200) NOT NULL
,CONSTRAINT pk_marca PRIMARY KEY (id)
);

INSERT INTO marca(nome) VALUES ('Chevrolet');
INSERT INTO marca(nome) VALUES ('VW');
INSERT INTO marca(nome) VALUES ('BMW');
SELECT * FROM marca;

DROP TABLE IF EXISTS modelo;

CREATE TABLE modelo(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(200) NOT NULL
,CONSTRAINT pk_modelo PRIMARY KEY (id)
);

INSERT INTO modelo(nome) VALUES ('CORSA');
INSERT INTO modelo(nome) VALUES ('GOL');
INSERT INTO modelo(nome) VALUES ('G160');
SELECT * FROM modelo;

DROP TABLE IF EXISTS  veiculo;

CREATE TABLE veiculo(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,cor VARCHAR(255) NOT NULL
,ano CHAR(4) NOT NULL
,placa VARCHAR(255) NOT NULL
,marca_id INT NULL
,modelo_id INT NULL
,CONSTRAINT fk_veiculo_modelo FOREIGN KEY (modelo_id) REFERENCES modelo (id)
,CONSTRAINT fk_veiculo_marca FOREIGN KEY (marca_id) REFERENCES marca (id)
);

INSERT INTO veiculo(cor,ano,placa,marca_id,modelo_id) VALUES ('Azul','2003','ABC-1234','1','1');
INSERT INTO veiculo(cor,ano,placa,marca_id,modelo_id) VALUES ('Preto','2013','SAF-1234','2','2');
INSERT INTO veiculo(cor,ano,placa,marca_id,modelo_id) VALUES ('Azul','2000','HAS-1234','3','3');
SELECT * FROM veiculo;

DROP TABLE IF EXISTS  pagamento;

CREATE TABLE pagamento(
id INT NOT NULL AUTO_INCREMENT
,data_ DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
,meio_de_pagamento VARCHAR(255) NOT NULL
,valor VARCHAR(255) NOT NULL 
,desconto VARCHAR(255) NOT NULL
,cliente_id INT NOT NULL
,CONSTRAINT pk_pagamento PRIMARY KEY (id)
,CONSTRAINT fk_cliente_pagamento FOREIGN KEY (cliente_id) REFERENCES cliente (id)
);

INSERT INTO pagamento(meio_de_pagamento,valor,desconto,cliente_id) VALUES ('Dinheiro','120,00','8%','2');
INSERT INTO pagamento(meio_de_pagamento,valor,desconto,cliente_id) VALUES ('Credito','170,00','8%','1');
INSERT INTO pagamento(meio_de_pagamento,valor,desconto,cliente_id) VALUES ('Debito','320,00','8%','3');
SELECT * FROM pagamento;

DROP TABLE IF EXISTS telefones;

CREATE TABLE telefones(
id INT NOT NULL AUTO_INCREMENT 
,numero VARCHAR (200) NOT NULL 
,cliente_id INT NULL
,funcionario_id INT NULL
,CONSTRAINT pk_telefones PRIMARY KEY (id)
,CONSTRAINT pk_telefones_cliente FOREIGN KEY (cliente_id) REFERENCES cliente (id)
,CONSTRAINT pk_telefones_funcionario FOREIGN KEY (funcionario_id) REFERENCES funcionario (id)
,CONSTRAINT telefones_cliente UNIQUE (numero,cliente_id)
,CONSTRAINT telefones_funcionario UNIQUE (numero,funcionario_id)
);

INSERT INTO telefones(numero,cliente_id) VALUES ('997192248','1');
INSERT INTO telefones(numero,funcionario_id) VALUES ('997198854','3');
INSERT INTO telefones(numero,funcionario_id) VALUES ('997195562','2');
SELECT * FROM telefones;